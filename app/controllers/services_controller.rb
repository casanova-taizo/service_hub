class ServicesController < ApplicationController
  before_action :authenticate_user!
  def index
    @comments = Comment.all.order("id DESC")
    # feed_contents = FeedContent.all
    # @feed_contents = feed_contents.map(&:content)
    @services = Service.all.order("id DESC")
    @services_top = Service.limit(4).order("id DESC")
    @services_trend = Service.limit(4).order("goodcount DESC")
    # @services_trend = Service.joins(:goods).includes(:service_id).order("size")
    @comment_trend = Comment.limit(3).order("goodcount DESC")
  end

  def show
    feed_contents = FeedContent.all
    @feed_contents = feed_contents.map(&:content)
    @services= Service.all
    @service = Service.find(params[:id])
    @comment_trend = @service.comments.where(reply_comment: nil).limit(3).order("goodcount DESC")
    @comment_new = Comment.new
    @comments_latest = @service.comments.where(reply_comment: nil).order("id DESC")
    @comments_for_comment = @service.comments
    begin
      @good_ratio = @service.goods.size*100/(@service.goods.size + @service.bads.size)
    rescue
      @good_ratio = 0
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
