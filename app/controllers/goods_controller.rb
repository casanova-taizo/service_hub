class GoodsController < ApplicationController
  def create
  		@service = Service.find(params[:service_id])
  		if @service.bads.where(user_id: current_user).exists?
  			@bad = current_user.bads.find_by(service_id: @service.id)
  			@bad.feed_content.destroy
  			@bad.destroy
	  		@good = current_user.goods.new(service_id: @service.id)
  			@good.save
    		@good.feed_content = FeedContent.create
    		redirect_to service_path(@service.id)
    	else
    		@good = current_user.goods.new(service_id: @service.id)
  			@good.save
    		@good.feed_content = FeedContent.create
    		redirect_to service_path(@service.id)
    	end
  end
  def destroy
  	@service = Service.find(params[:service_id])
  	@good = current_user.goods.find_by(service_id: @service.id)
  	@good.feed_content.destroy
  	@good.destroy
    redirect_to service_path(@service.id)
  end

  private
  def good_params
    params.require(:good).permit(:user_id, :comment_id)
  end
end
