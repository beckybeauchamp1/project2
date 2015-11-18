class CommentsController < ApplicationController
   before_action :set_comment, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!

  def index
    @comments = Comment.all
  end

  def create
    @retreat = Retreat.find(params[:retreat_id])
    @retreat.comments.create!(comment_params.merge(user: current_user))
    redirect_to retreat_path(@retreat),
      notice: "Thanks, #{current_user.firstname} for sharing!"
  end

  def update
    @retreat = Retreat.find(params[:retreat_id])
    @comment.update(comment_params.merge(user: current_user))
    redirect_to retreat_path(@retreat)
  end

  def destroy
    @retreat = Retreat.find(params[:retreat_id])
    @comment.destroy
    redirect_to retreat_path(@retreat)
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
