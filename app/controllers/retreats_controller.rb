class RetreatsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @retreats = Retreat.all
  end

  def show

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
  def retreat_params
    params.require(:retreat).permit(:title, :address, :description, :date_range, :cost)
  end

  def set_post
   @board = Board.find(params[:id])
  end

end
