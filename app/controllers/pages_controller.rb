class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show]
  def home
    @vehicles_autos = Vehicle.where category: "Auto"
    @vehicles_bicicletas = Vehicle.where category: "Bicicleta"
    @vehicles_scooters = Vehicle.where category: "Scooter"
  end

  # def show
  #   @vehicle = Vehicle.find(params[:id])
  # end

  def autos
    @vehicles_autos = Vehicle.where category: "Auto"
  end
end
