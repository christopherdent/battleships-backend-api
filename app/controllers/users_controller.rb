class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:ships]
  end

  def show
    user = User.find(params[:id])
    render json: user, include: [:ships]
  end



end
