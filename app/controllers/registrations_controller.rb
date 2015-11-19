class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @registered_retreats = current_user.registered_retreats
    @registrations = current_user.registrations
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to users_registered_retreats_path
  end

end
