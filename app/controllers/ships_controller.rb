class ShipsController < ApplicationController

  def index
    ships = Ship.all
    render json: ships
  end

  def show
    ship = Ship.find(params[:id])
    render json: ship
  end

  def create
  end

  def update ###THIS part works.  
    ship = Ship.find(params[:id])
    ship.fleet_id = 1
    ship.save

  end

  def destroy
    ship = Ship.find(params[:id])
    ship.destroy
  end


end
