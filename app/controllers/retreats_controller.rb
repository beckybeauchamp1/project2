class RetreatsController < ApplicationController
  before_action :set_retreat, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update, :destroy]

  def index
    @retreats = Retreat.text_search(params[:query])
  end

  def show
    @retreat = Retreat.find(params[:id])
    @comments = Comment.all
    @instructor = @retreat.instructor
    @comment = Comment.new
    @attendances = @retreat.attendances
  end

  def new
    @retreat = Retreat.new
    authorize! :create, @retreat
  end

  def create
    @retreat = Retreat.create(retreat_params.merge(user: current_user))
    authorize! :create, @retreat
    redirect_to retreats_path, notice:
    "Congrats, #{current_user.firstname} you've just started a new retreat!"
  end

  def edit
    authorize! :update, @retreat
  end

  def update
    @retreat.update(retreat_params)
    authorize! :update, @retreat
    redirect_to retreat_path(@retreat),
      notice: "Thanks, #{current_user.firstname} for updating your retreat info!"
  end

  def destroy
    @retreat.photos.destroy_all
    @retreat.attendances.destroy_all
    @retreat.destroy
    authorize! :destroy, @retreat
    redirect_to retreats_path
  end

  def search
    @retreats = Retreat.search_name(params[:query])
  end

  def add_attendance
    @retreat = Retreat.find(params[:id])
    @instructor = @retreat.instructor
    @retreat.attendances.create!(user: current_user)
    redirect_to retreat_path(@retreat),
      notice: "Thanks for signing up #{current_user.firstname}, please contact stay tuned for more details!"
  end

  private
  def retreat_params
    params.require(:retreat).permit(:title, :address, :description, :start_date, :end_date, :cost)
  end

  def set_retreat
    @retreat = Retreat.find(params[:id])
  end

end
