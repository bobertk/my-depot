class Cart < ActiveRecord::Base	

  # line_items die w the cart
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
  	# active record does Dynamic Finder w find_by and product_id
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

  def total_price  # build array
  	line_items.to_a.sum { |item| item.total_price }
  end
end
