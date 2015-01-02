class Slot < ActiveRecord::Base
	belongs_to :Gsrelationships
	has_one :booking

	validates :slot_id, presence: true
	validates :slot_date, presence: true
	validates :slot_start_time, presence: true
	validates :slot_end_time, presence: true
	validates :slot_availabiliy, presence: true
	validates :ground_id, presence: true
	validates :sport_id, presence: true

end
