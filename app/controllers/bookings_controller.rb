class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight, number_of_passengers: params[:num_passengers])

    # Create blank passenger objects
    params[:num_passengers].to_i.times { @booking.passengers.build }

  end
end
