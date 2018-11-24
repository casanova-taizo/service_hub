class ServicesController < ApplicationController
  def index
    feed_contents = FeedContent.all
    @feed_contents = feed_contents.map(&:content)
    @services = Service.all
  end

  def show
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
