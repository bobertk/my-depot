class Cart < ActiveRecord::Base	
  # line_items die w the cart
  has_many :line_items, dependent: :destroy
end
