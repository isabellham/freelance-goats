
class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :new]
  before_action :set_goat, only: %i[new create]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.goat = @goat
    @booking.user = current_user
    @booking.save
    authorize @booking
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id, :goat_id)
  end

  def set_goat
    @goat = Goat.find(params[:goat_id])
  end
  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  # end
end
