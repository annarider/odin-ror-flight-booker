class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @available_dates = Flight.select(:start).distinct.order(:start).pluck(:start).map(&:to_date)
    @flights = Flight.all
  end
end
