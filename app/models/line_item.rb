class LineItem < ActiveRecord::Base
  attr_accessible  :id, :created_at, :updated_at, :product, :product_id, :cart_id, :quantity

  belongs_to :product
  belongs_to :cart

  def total_price
  	product.price * quantity
  end
end
