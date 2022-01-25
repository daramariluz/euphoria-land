class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicles.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @booking = Booking.where(vehicle_id: @vehicle.id)
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to list_path(@vehicle)
    else
      render :new
    end
  end

  def edit
    @vehicle
  end

  def destroy
    @vehicle.destroy
    redirect_to list_path(@vehicle.booking)
  end
end
