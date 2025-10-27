class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @available_dates = Flight.available_dates
    @flights = Flight.all
  end
end
