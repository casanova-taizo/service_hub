class FavoritesController < ApplicationController
  def create
    service = Service.find(params[:service_id])
    Favorite.create(user_id: current_user.id, service_id: service.id)
  end
end
