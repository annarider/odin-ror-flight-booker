class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @available_dates = Flight.pluck(:start).map(&:to_date).uniq.sort
    @flights = Flight.all
  end
end
