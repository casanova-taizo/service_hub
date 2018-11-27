class ServicesController < ApplicationController
  def index
    feed_contents = FeedContent.all
    @feed_contents = feed_contents.map(&:content)
    @services = Service.all.order("id DESC")
    @services_trend = Service.limit(2).order("goodcount DESC")
    # @services_trend = Service.joins(:goods).includes(:service_id).order("size")
    @comment_trend = Comment.limit(3).order("goodcount DESC")
  end

  def show
    feed_contents = FeedContent.all
    @feed_contents = feed_contents.map(&:content)
    @services= Service.all
    @service = Service.find(params[:id])
    @comment_trend = @service.comments.limit(3).order("goodcount DESC")
    @comment_new = Comment.new
    @comments_latest = @service.comments.order("id DESC")
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
