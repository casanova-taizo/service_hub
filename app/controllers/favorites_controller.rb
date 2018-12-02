class FavoritesController < ApplicationController
  def create
    service = Service.find(params[:service_id])
    Favorite.create(user_id: current_user.id, service_id: service.id)
    redirect_to service_path(service)
  end
  def destroy
  	service = Service.find(params[:service_id])
  	favorite = current_user.favorites.find_by(service_id: service.id)
  	favorite.destroy
  	redirect_to service_path(service)
  end
end
