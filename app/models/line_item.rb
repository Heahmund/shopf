class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart
  def price
    
    product.price
  end
  def total_price
    
    product.price * quantity
  end
end
