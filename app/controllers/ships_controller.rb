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

  def update ###  update mainly exists to assign a specific fleet id to the ship.
    ship = Ship.find(params[:id])
    ship.fleet_id = 1   #this is instead of a typical .update - its the only change needed, and its not in params, so must hard code.
    fleet = Fleet.find(1)

    if Ship.exists?(1)  ##this is just so the seed data can seed - if there are no ships, it wont seed because of the following line.  app runs off seed data.
      if ship.save
        render json: ship
      else
        render json: {message: ship.errors.messages[:team_max][0]}  ##message when 5 ships.  when 5 ships, other things also must trigger - fleet card, computer fleet....
      end

    end
  end

  

  # def destroy     I dont think I ever need to destroy a ship
  #   ship = Ship.find(params[:id])
  #   ship.destroy
  # end


end
