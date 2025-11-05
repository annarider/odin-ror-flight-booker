class PassengerMailer < ApplicationMailer
  default from: "notifications@flightbooker.com"

  def confirmation_email
    @passenger = params[:passenger]
    @url = 'http://localhost:3000/'
    mail(to: @user.email, subject: "Flight Confirmation")
  end
end
