class City < ActiveRecord::Base
	has_many :scs, dependent: :destroy
	validates :city_id, presence: true
	validates :city_name, presence: true
end