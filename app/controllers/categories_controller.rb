class CategoriesController < ApplicationController

  def index
    @categories = Category.order('LOWER(name)')
  end

  def new
    @category = Category.new()
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: t('.created')
    else
      render :new, status: :unprocessable_entity
    end 
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path, notice: t('.updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path, notice: t('.destroyed')
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
