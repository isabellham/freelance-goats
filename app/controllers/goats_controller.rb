class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show, :new]

  def index
    @goats = policy_scope(Goat)
  end

  def show
    @goat = Goat.find(params[:id])
    authorize @goat
  end

  def new
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
  end

  def goat_params
    params.require(:goat).permit(:name, :goattype, :city, :breed, :gender, :description, :photo, :price)
  end
end
