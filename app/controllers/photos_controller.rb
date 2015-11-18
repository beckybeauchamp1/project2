class PhotosController < ApplicationController
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
    redirect_to retreat_photos_path(@retreat, @user), notice:
    "Congrats, #{current_user.firstname} you've just started a new retreat!"
  end

    def edit
      @retreat = Retreat.find(params[:retreat_id])
      @photo = Photo.find(params[:retreat_id])
    end

    def update
      @photo = Photo.find(params[:id])
      @photo.update(photo_params.merge(user: current_user))
      redirect_to retreat_photos_path(@retreat, @user), notice:
      "Thanks, #{current_user.firstname} for updating this photo!"
    end

    def destroy
    end

    private
    def photo_params
      params.require(:photo).permit(:title, :description, :photo_url)
    end

end
