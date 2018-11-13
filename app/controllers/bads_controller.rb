class BadsController < ApplicationController
  def create
    @bad = Bad.create(bad_params)
    @bad.feed_content = FeedContent.create
  end

  private
  def good_params
    params.require(:bad).permit(:user_id, :service_id)
  end
end
