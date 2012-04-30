class LineItem < ActiveRecord::Base
  attr_accessible  :id, :created_at, :updated_at, :product, :product_id, 
  	:cart, :cart_id, :quantity, :order_id

  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
  	product.price * quantity
  end
end
