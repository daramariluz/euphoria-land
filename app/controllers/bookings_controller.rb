class BookingsController < ApplicationController
  before_action :booking_params, except: [:index]

  def index
    # user = User.find params[:user_id]
    # @bookings = user.bookings
    @bookings  = current_user.bookings
  end

  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to list_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location, :user_id, :vehicle_id)
  end
end
