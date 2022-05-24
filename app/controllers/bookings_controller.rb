class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
