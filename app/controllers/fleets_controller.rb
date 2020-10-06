class FleetsController < ApplicationController


  def index
    fleets = Fleet.all
    render json: fleets, include: [:ships]
  end

  def create  ##### now used to assign ships to fleet 2.  should rename to a custom route.
    # fleet = Fleet.find(2)
    # fleet.ships = []
    # ships = Ship.all
    # newArray = []
    # ships.each do |ship|
    #   newArray << ship if ship.fleet_id != 1
    # end
    #   newArray.each do |ship|
    #     if fleet.ships.count <= 4
    #        fleet.ships << ship
    #      end
    #   end
    #   render json: fleet
    end

    def fleet_two
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
        render json: fleet
    end


  def update  #this upddates he  fleett object to reset ship.  THIS RESETS THE GAME ON RELOAD DONT MESS WITH IT.
      a = Fleet.find(1)
      b = Fleet.find(2)
      a.ships = []
      b.ships = []
      a.save
      b.save
      render json: { human_ships: a.ships, comp_ships: b.ships  }
  end


  def show
    # ship = Ship.find(params[:ship_id])
    fleet = Fleet.find(params[:id])
    render json: fleet
  end

  def battle
    ##going to do a get
    a = Fleet.find(1)
    b = Fleet.find(2)
    arr1 = []
    arr2 = []

    a.ships.each do |ship|
      arr1 << ship.points
    end

    b.ships.each do |ship|
      arr2 << ship.points
    end

    if arr1.sum > arr2.sum

      render json: { message: 'You win! Consider a career at sea.' }
    else
      # return "Computer Wins"
      render json: { message: 'Computer wins! You really let THIS app beat you?  SAD.' }

    end

  end

end
