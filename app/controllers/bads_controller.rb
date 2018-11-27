class BadsController < ApplicationController
  def create
  	@service = Service.find(params[:service_id])
  	if @service.goods.where(user_id: current_user).exists?
  		@good = current_user.goods.find_by(service_id: @service.id)
  		@good.feed_content.destroy
  		@good.destroy
  		@bad = current_user.bads.new(service_id: @service.id)
  		@bad.save
    	@bad.feed_content = FeedContent.create
    	redirect_to service_path(@service.id)
    else
    	@bad = current_user.bads.new(service_id: @service.id)
  		@bad.save
    	@bad.feed_content = FeedContent.create
    	redirect_to service_path(@service.id)
    end
  end
  def destroy
  	@service = Service.find(params[:service_id])
  	@bad = current_user.bads.find_by(service_id: @service.id)
  	@bad.feed_content.destroy
  	@bad.destroy
    redirect_to service_path(@service.id)
  end

  private
  def good_params
    params.require(:bad).permit(:user_id, :service_id)
  end
end
