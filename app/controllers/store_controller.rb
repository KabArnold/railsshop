class StoreController < ApplicationController
  def index
    @products = Product.order(:product_name)
  end
end
