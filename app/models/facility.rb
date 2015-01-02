class Facility < ActiveRecord::Base
	belongs_to :sc
	validates :sc_id, presence: true
	validates :refreshment, presence: true
	validates :parking, presence: true
	validates :sports_shop, presence: true
end
