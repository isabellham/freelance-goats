class GoatsController < ApplicationController
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
    @goat.save
    authorize @goat
  end

  def goat_params
    params.require(:goat).permit(:name, :type, :city, :breed, :gender, :description, :image_url, :price, :user_id)
  end
end
