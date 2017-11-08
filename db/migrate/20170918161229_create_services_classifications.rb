class CreateServicesClassifications < ActiveRecord::Migration[5.1]
  def change
    create_table :services_classifications do |t|
    	t.references :service, 				index: true, foreign_key: true
    	t.references :classification, index: true, foreign_key: true

      t.timestamps
    end
  end
end
