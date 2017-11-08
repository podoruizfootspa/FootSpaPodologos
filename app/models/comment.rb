class Comment < ApplicationRecord
	belongs_to :service

	validates :title,
						:body,
						:status,
						:service_id,
						presence: true

	enum status: [:Aprobado, :No_aprobado]
end
