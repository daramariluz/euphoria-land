class BookingsController < ApplicationController
  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new
  end
end
