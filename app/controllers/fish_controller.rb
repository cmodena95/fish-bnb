class FishController < ApplicationController
  def index
    @fishes = Fish.all
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(fish_params)
    if @fish.save
      redirect_to fish_path(@fish)
    else
      render :new
    end
  end

  private

  def fish_params
    params.require(:fish).permit(:name, :description, :location, :price, :photo)
  end
end
