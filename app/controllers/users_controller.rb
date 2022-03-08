class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    if current_user
      render json: current_user.articles
    else
      render json: {error: 'acces denied'}, statut: 401
    end
  end
end
