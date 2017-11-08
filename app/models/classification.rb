class Classification < ApplicationRecord
	has_many :services_classifications
	has_many :services, :through => :services_classifications

	validates :title,
						:description,
						presence: true
end
