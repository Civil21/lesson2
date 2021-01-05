class SweetProductsController < ApplicationController
  def index
    @sweet_products = SweetProduct.all
    @count = @sweet_products.count
    @sweet_products = @sweet_products.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
  end

  def set_page
    @sweet_products = SweetProduct.all
    @count = @sweet_products.count
    @sweet_products = @sweet_products.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
    respond_to :js
  end

  def show
    @sweet_product = SweetProduct.find(params[:id])
  end

  def search
    @search = params[:search]
    @sweet_products = SweetProduct.where("name LIKE '%#{params[:search]}%'").or(SweetProduct.where("description LIKE '%#{params[:search]}%'"))
    @count = @sweet_products.count
    @sweet_products = @sweet_products.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
  end
end
