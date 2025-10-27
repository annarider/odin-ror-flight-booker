class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @available_dates = Flight.available_dates
    @flights = search_params_present? ? search_flights : []
  end

  private

  def search_params_present?
    params[:departure_airport_id].present? &&
      params[:arrival_airport_id].present? &&
      params[:start].present?
  end

  def search_flights
    Flight.search(
      params[:departure_airport_id],
      params[:arrival_airport_id],
      params[:start]
    )
  end
end
