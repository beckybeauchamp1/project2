class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @retreat = Retreat.find(params[:retreat_id])
    @photos = @retreat.photos
  end

  def show
  end

  def new
    @retreat = Retreat.find(params[:retreat_id])
    @photo = Photo.new
  end

  def create
    @retreat = Retreat.find(params[:retreat_id])
    @photo = @retreat.photos.create!(photo_params.merge(user: current_user))
    redirect_to retreat_photos_path(@retreat), notice:
    "#{current_user.firstname} you've sucessfully added a photo!"
  end

  def edit
    @retreat = Retreat.find(params[:retreat_id])
  end

  def update
    @photo.update(photo_params.merge(user: current_user))
    redirect_to retreat_photos_path, notice:
    "Thanks, #{current_user.firstname} for updating this photo!"
  end

  def destroy
    @retreat = Retreat.find(params[:retreat_id])
    @photo.destroy
    redirect_to retreat_photos_path(@retreat)
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :description, :photo_url, :image)
  end

  def set_photo
   @photo = Photo.find(params[:id])
  end

end
