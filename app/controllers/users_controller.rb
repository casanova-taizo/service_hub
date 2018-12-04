class UsersController < ApplicationController

  def show
    @favorites = current_user.favorites

  end

  def update
    current_user.update(update_params)
    render :show
  end

  private
  def update_params
    params.require(:user).permit(:email,:password,:status_id)
  end
end
