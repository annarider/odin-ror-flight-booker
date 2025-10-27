class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @available_dates = Flight
      .select('DATE(start) as date')
      .distinct
      .order('DATE(start)')
      .pluck(Arel.sql'DATE(start)')
      .map(&:to_date)
    @flights = Flight.all
  end
end
