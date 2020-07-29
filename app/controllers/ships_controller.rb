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
    user = User.find(params[:user_id])
    # ship = user.ships.build({
    #   name:  these fields will reflect form fields after I build the form
    #   })
  end

  def destroy
    ship = Ship.find(params[:id])
    ship.destroy
  end


end
