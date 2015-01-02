class Staff < ActiveRecord::Base
	belongs_to :sc

	validates :sc_id, presence: true
	validates :staff_id, presence: true
	validates :staff_name, presence: true
	validates :staff_email, presence: true
	validates :staff_phone, presence: true
end
