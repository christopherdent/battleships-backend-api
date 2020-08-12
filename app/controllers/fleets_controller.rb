class FleetsController < ApplicationController

  def index
    fleets = Fleet.all
    render json: fleets
  end

  def create
    ship = Ship.find(params[:ship_id])
    fleet = Fleet.create
    fleet.ships << ship
    fleet.save
    re
  end





end
