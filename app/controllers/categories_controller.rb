class CategoriesController < ApplicationController
  def index
  end

  def show
    @comments = Comment.all.order("id DESC")
    @category= Category.find(params[:id])
    @category_services = @category.services
  end

  def new
  end

  def create
    @category = Category.new(catregory_params)
    @category.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def catregory_params
    params.require(:category).permit(:category_name)
  end
end
