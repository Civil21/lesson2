class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @sweet_products = @category.sweet_products
    @count = @sweet_products.count
    @sweet_products = @sweet_products.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
  end
end
