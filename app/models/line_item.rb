class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
end
public
def total_price
 @total= product.price * quantity
end