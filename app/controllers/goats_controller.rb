class GoatsController < ApplicationController
  def index
    @goats = Goat.all
  end

  def show
    @goat = Goat.find(params[:id])
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.save
  end

  def goat_params
    params.require(:goat).permit(:name, :type, :city, :breed, :gender, :description, :image_url, :price)
  end
end
