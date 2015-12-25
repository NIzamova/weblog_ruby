class User < ActiveRecord::Base 
	belongs_to :user 
	validates :name, presence: true 
	validate  :price_positive 

	def price_positive
		errors.add(:price) if price<0
	end
end