class Product < ActiveRecord::Base 
	validates :name, presence: true 
	validate  :price_positive 

	def price_positive
		errors.add(:price) if price && price<0
	end
end