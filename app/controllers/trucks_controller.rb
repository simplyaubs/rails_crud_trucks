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

  def show
    @truck = Truck.find(params[:id])
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    @truck.update_attributes!(truck_params)

    redirect_to trucks_path
  end

  private
  def truck_params
    params.require(:truck).permit(:make, :model)
  end
end