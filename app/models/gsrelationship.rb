class Gsrelationship < ActiveRecord::Base
	belongs_to :sport
	belongs_to :ground
	has_many :slots

	validates :ground_id, presence: true
	validates :ground_name, presence:true
end
