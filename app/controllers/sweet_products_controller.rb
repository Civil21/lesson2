class SweetProductsController < ApplicationController
  def index
    @sweet_products = SweetProduct.all
  end

  def show
    @sweet_product = SweetProduct.find(params[:id])
  end

  def search
    @search = params[:search]
    @sweet_products = SweetProduct.where("name LIKE '%#{params[:search]}%'")
  end
end
