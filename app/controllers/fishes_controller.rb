class FishesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        fishes.name @@ :query \
        OR fishes.location @@ :query \
        OR fishes.specie @@ :query \
        OR fishes.description @@ :query \
      "
      @fishes = Fish.where(sql_query, query: "%#{params[:query]}%")
    else
      @fishes = Fish.all
    end


    @markers = @fishes.geocoded.map do |fish|
      {
        lat: fish.latitude,
        lng: fish.longitude,
        infoWindow: { content: render_to_string(partial: "info_window", locals: { fish: fish }) }
      }
    end
  end

  def show
    @fish = Fish.find(params[:id])
    @booking = Booking.new


    @markers = [{
      lat: @fish.latitude,
      lng: @fish.longitude,
      infoWindow: { content: render_to_string(partial: "info_window", locals: { fish: @fish }) }
    }]
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

