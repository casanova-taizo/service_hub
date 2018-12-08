class Admin::ServicesController < ApplicationController
  def index
    if current_user.role = 1
      @services = Service.all
    else
      render 403
    end
  end

  def show
  end

  def new
    if current_user.role = 1
      @service = Service.new
    else
      render 403
    end
  end

  def create
    @service = Service.new(service_params)
    @service.save
    redirect_to admin_services_path
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    service = Service.find(params[:id])
    service.update(service_params)
    redirect_to admin_services_path
  end

  def destroy
    service = Service.find(params[:id])
    service.destroy
    redirect_to admin_services_path
  end

  private
  def service_params
    params.require(:service).permit(:service_name, :service_summary,:release_date, :service_image, :service_campany,:service_link, :related_link, :category_id, :tag_list)
  end
end


