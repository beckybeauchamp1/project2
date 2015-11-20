class HomeController < ApplicationController
  def index
    @recent_retreats = Retreat.all.order(:start_date).limit(3)
  end

end
