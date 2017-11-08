class CreateServicesPromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :services_promotions do |t|
    	t.references :service,		index: true, foreign_key: true
    	t.references :promotions, index: true, foreign_key: true

      t.timestamps
    end
  end
end
