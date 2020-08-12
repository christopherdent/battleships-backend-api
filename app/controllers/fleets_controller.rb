class FleetsController < ApplicationController

  def index
    fleets = Fleet.all
    render json: fleets
  end

  # def create
  #   ship = Ship.find(params[:ship_id])
  #   fleet = Fleet.create
  #   fleet.ships << ship
  #   fleet.save
  #
  # end


  def update
    ship = Ship.find(params[:ship_id]) ## it will need the ships id

    fleet = Fleet.find(3) ## hard codes this action to ONLY update the user fleet

    fleet.ships << ship  ## adds the clicked ship to the user fleet


  end

  def show
    # ship = Ship.find(params[:ship_id])

    fleet = Fleet.find(3)


      render json: fleet
  end



end
