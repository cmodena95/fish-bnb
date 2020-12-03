class BookingsController < ApplicationController
  def new
    @fish = Fish.find(params[:fish_id])
  end

  def create
    @fish = Fish.find(params[:fish_id])
    @booking = Booking.new(booking_params)
    @booking.fish = @fish
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to fish_bookings_path
    else
      redirect_to fish_path(@booking.fish)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end

  def index
    @bookings = Booking.all
  end
end
