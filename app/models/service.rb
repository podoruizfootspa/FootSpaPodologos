class Service < ApplicationRecord
	has_many :comments
	has_many :services_promotions
	has_many :services_classifications
	has_many :classifications, :through => :services_classifications
	has_many :promotions,			 :through => :services_promotions

	validates :name,
						:price,
						:invitation,
						:description,
						presence: true
end
