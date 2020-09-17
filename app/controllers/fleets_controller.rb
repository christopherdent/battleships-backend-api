class FleetsController < ApplicationController

  def index
    fleets = Fleet.all
    render json: fleets, include: [:ships]
  end

  def create  ##### probably no longer needed, seeded  fleets only to be used.
    # fleet = Fleet.find(2)
    #
    # fleet.save
    # ships = Ship.order("RANDOM()").limit(5)
    # ships.each do |ship|
    #   fleet.ships << ship
    # end
    # fleet.save
  end


  def update  #this upddates he  fleett object to reset ship.  THIS RESETS THE GAME ON RELOAD DONT MESS WITH IT.
    a = Fleet.find(1)
    b = Fleet.find(2)
    a.ships = []
    b.ships = []
    a.save
    b.save
  end


  def show
    # ship = Ship.find(params[:ship_id])
    fleet = Fleet.find(params[:id])
    render json: fleet
  end



end
