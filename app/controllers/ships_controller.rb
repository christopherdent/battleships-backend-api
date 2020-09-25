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

  def update ###  update exists only to assign a specific fleet_id to the ship.

    # ship = Ship.find(params[:id])
    # ship.fleet_id = params[:fleet_id]   ##from the body of the fetch
    # @fleet = params[:fleet_id]
    ship = Ship.update(params[:id], :fleet_id => params[:fleet_id])
    ##ship = Ship.update(params[:id], :fleet_id => 2) ##this doesnt even work!

    if Ship.exists?(1)  ##this is just to make sure the seed data can seed - if there are no ships, it wont seed because of the following line.  app runs off seed data.
      if ship.save
        render json: ship
      else
        render json: {message: ship.errors.messages[:fleet_max][0]}  ##message when 5 ships in the fleet
      end

    end
  end


end
