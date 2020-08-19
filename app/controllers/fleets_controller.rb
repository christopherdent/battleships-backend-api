class FleetsController < ApplicationController

  def index
    fleets = Fleet.all
    render json: fleets, include: [:ships]
  end

  # def create  ##### probably no longer needed, seeded  fleets only to be used.
    # No need to create a fleet, seed fleets always will be used.
  # end


  def update
    ship = Ship.find(params[:ship_id]) ## it will need the ships id
    fleet = Fleet.find(1) ## hard codes this action to ONLY update the player fleet
    fleet.ships << ship  ## adds the clicked ship to the user fleet
  end

  def show
    # ship = Ship.find(params[:ship_id])
    fleet = Fleet.find(1)
    render json: fleet
  end



end
