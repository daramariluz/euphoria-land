class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @vehicles = Vehicles.all
  end
end
