class PassengerMailer < ApplicationMailer
  default from: "notifications@flightbooker.com"

  def confirmation_email
    @passenger = params[:passenger]
    @flight = @passenger.booking.flight
    @url = 'http://localhost:3000/'
    mail(to: @passenger.email, subject: "Flight Confirmation")
  end
end
