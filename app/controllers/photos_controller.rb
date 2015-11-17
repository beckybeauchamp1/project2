class PhotosController < ApplicationController
  def index
    @retreat = Retreat.find(params[:retreat_id])
    @photos = @retreat.photos
  end
end
