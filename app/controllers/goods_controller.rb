class GoodsController < ApplicationController
  def create
    @good = Good.create(good_params)
    @good.feed_content = FeedContent.create
  end

  private
  def good_params
    params.require(:good).permit(:user_id, :comment_id)
  end
end
