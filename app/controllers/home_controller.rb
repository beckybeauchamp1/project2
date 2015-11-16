class HomeController < ApplicationController
  def index
    @recent_retreats = Retreat.all.order(:date_range).limit(3)
  end
end
