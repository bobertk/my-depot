class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)  # ordered (alpha) list of products
  	@cart = current_cart
  end
end
