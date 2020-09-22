class FleetsController < ApplicationController

  def index
    fleets = Fleet.all
    render json: fleets, include: [:ships]
  end

  def create  ##### now used to assign ships to fleet 2.
    fleet = Fleet.find(2)
    fleet.ships = []
    ships = Ship.all
    newArray = []
    ships.each do |ship|
      newArray << ship if ship.fleet_id != 1
    end

      newArray.each do |ship|
        if fleet.ships.count <= 4
           fleet.ships << ship
         end
      end
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
