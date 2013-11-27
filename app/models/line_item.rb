class LineItem < ActiveRecord::Base
  belongs_to :order	
  belongs_to :product
  belongs_to :cart
 
#adds the prices together to make a total 
	def total_price
		product.price * quantity
	end	
end
