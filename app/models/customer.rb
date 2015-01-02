class Customer < ActiveRecord::Base

	has_many :bookings
	validates :customer_id, presence:true
	validates :customer_name, presence:true
	validates :customer_email, presence:true
	validates :customer_phone, presence:true 
end
