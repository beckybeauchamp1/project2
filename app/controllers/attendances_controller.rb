class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def index
    @registered_retreats = current_user.registered_retreats
    @attendances = current_user.attendances
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    redirect_to users_registered_retreats_path
  end

end
