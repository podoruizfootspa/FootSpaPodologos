class Service < ApplicationRecord
	has_attached_file :image_2, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }
	validates_attachment_content_type :image_2, content_type: /\Aimage\/.*\z/

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
