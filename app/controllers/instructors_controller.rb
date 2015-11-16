class InstructorsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def instructor_params
    params.require(:instructor).permit(:firstname, :lastname, :type_of_yoga_practice, :city, :state, :photo_url, :description, :facebook_url, :email, :password, :password_confirmation)
  end

  def set_post
   @nstructor = Instructor.find(params[:id])
  end

end