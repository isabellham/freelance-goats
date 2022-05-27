class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    if params[:query].present?
      @goats = policy_scope(Goat.where("goattype ILIKE ?", "%#{params[:query]}%"))
    else
      @goats = policy_scope(Goat)
    end
  end

  def show
    @goat = Goat.find(params[:id])
    @booking = Booking.new
    authorize @goat
  end

  def new
    redirect_to new_user_registration_path unless current_user
    @goat = Goat.new
    authorize @goat
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    @goat.save
    redirect_to goat_path(@goat)
    authorize @goat
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy
    redirect_to goats_path, status: :see_other
    authorize @goat
  end

  def goat_params
    params.require(:goat).permit(:name, :goattype, :city, :breed, :gender, :description, :photo, :price)
  end
end
