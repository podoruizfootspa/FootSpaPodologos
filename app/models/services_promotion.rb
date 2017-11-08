class ServicesPromotion < ApplicationRecord
	belongs_to :service
	belongs_to :promotion

	validates :service_id,
						:promotion_id,
						presence: true
end
