class Sc < ActiveRecord::Base
	belongs_to :city
	has_many :staffs
	has_one :facility
	has_many :grounds 


	validates :sc_id, presence: true
	validates :sc_name, presence: true
	validates :city__id, presence: true
	validates :sc_location, presence: true


end
