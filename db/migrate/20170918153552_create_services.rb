class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
    	t.string	:name
    	t.integer :price, default: 0
    	t.string	:invitation
    	t.string	:description

      t.timestamps
    end
  end
end
