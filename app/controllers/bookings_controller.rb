class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new(flight: @flight, number_of_passengers: params[:num_passengers])

    # Create blank passenger objects
    params[:num_passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking, notice: "Booking was created."
    else
      @flight = Flight.find(params[:booking][:flight_id])
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(
      :flight_id,
      :number_of_passengers,
      passengers_attributes: [ :name ])
  end
end
