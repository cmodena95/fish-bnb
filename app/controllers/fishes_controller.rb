class FishesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

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
      redirect_to fishes_path
    else
      render :new
    end
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy

    # no need for app/views/fish/destroy.html.erb
    redirect_to fishes_path
  end

  private

  def fish_params
    params.require(:fish).permit(:name, :description, :location, :price, :specie, :photo)
  end

  def require_permission
    if current_user != Fish.find(params[:id]).user
      redirect_to fishes_path
    #Or do something else here
    end
  end
end

