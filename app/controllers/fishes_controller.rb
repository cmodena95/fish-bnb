class FishesController < ApplicationController
  def index
    @fishes = Fish.all

    @markers = @fishes.geocoded.map do |fish|
      {
        lat: fish.latitude,
        lng: fish.longitude
      }
    end
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(fish_params)
    @fish.user = current_user
    if @fish.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def fish_params
    params.require(:fish).permit(:name, :description, :location, :price, :specie, :photo)
  end
end
