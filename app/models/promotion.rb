class Promotion < ApplicationRecord
	has_many :services_promotions
	has_many :services, :through => :services_promotions

	validates :title,
						presence: true
end
