class Ground < ActiveRecord::Base
	belongs_to :sc
	has_many :gsrelationships
	has_many :sports, through: :gsrelationships
	



	validates :ground_id, presence: true
	validates :sc_id, presence: true
	validates :ground_name, presence: true
end
