class RetreatsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @retreats = Retreat.all
  end

  def show
    @retreat = Retreat.find(params[:id])
    @comments = Comment.all
    @comment = Comment.new
  end

  def new
    @retreat = Retreat.new
  end

  def create
    @retreat = Retreat.create(retreat_params.merge(user:current_user))
    redirect_to retreats_path, notice:
    "Congrats, #{current_user.firstname} you've just started a new retreat!"
  end

  def edit
  end

  def update
    @retreat.update(retreat_params)
    redirect_to retreat_path(@retreat), notice:
      "Thanks, #{current_user.firstname} for updating your retreat info!"
  end

  def destroy
    @retreat.destroy
    redirect_to retreats_path
  end

  private
  def retreat_params
    params.require(:retreat).permit(:title, :address, :description, :start_date, :end_date, :cost)
  end

  def set_post
   @retreat = Retreat.find(params[:id])
  end

end
