class StoreController < ApplicationController
	skip_before_filter :authorize
  def index
  	@products = Product.order(:title)  # ordered (alpha) list of products
  	@cart = current_cart
  end
end
