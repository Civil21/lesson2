class PagesController < ApplicationController
  def index
    @sweet_products = SweetProduct.limit(4)
  end
end
