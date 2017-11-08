class ServicesClassification < ApplicationRecord
	belongs_to :service
	belongs_to :classification

	validates :service_id,
						:classification_id,
						presence: true
end
