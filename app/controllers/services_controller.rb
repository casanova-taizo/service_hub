class ServicesController < ApplicationController
  before_action :authenticate_user!
  def index
    feed_contents = FeedContent.all
    @feed_contents = feed_contents.map(&:content)
    @services = Service.limit(3).order("id DESC")
    @services_trend = Service.limit(4).order("id DESC")
  end

  def show
    @service = Service.find(params[:id])
    @comment_new = Comment.new


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
