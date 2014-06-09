class TrucksController < ApplicationController

  def index
    @truck = Truck.new
    @trucks = Truck.all
  end

  def create
    @truck = Truck.new(truck_params)
    if @truck.save

      redirect_to trucks_path
    else
      render :index
    end
  end

  private
  def truck_params
    params.require(:truck).permit(:make, :model)
  end
end