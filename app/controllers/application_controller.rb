class ApplicationController < ActionController::Base
  $PER_PAGE = 12

  private

  def sweet_products
    @sweet_products ||= SweetProduct.all
  end

  def search
    @search = params[:search]
    @sweet_products = sweet_products.where("name LIKE '%#{params[:search]}%'").or(sweet_products.where("description LIKE '%#{params[:search]}%'"))
  end

  def pagination
    @count = sweet_products.count
    @sweet_products = sweet_products.page(page).per($PER_PAGE).with_attached_image.includes(:categories)
  end

  def page
    @page ||= (params[:page] || 1).to_i
  end
end
