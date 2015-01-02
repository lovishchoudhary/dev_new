class Sport < ActiveRecord::Base

	has_many :gsrelationships
	has_many :grounds, through: :gsrelationships


	validates :sport_id, presence: true
	validates :sport_name, presence: true
end
