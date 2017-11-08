class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
    	t.string :title

      t.timestamps
    end
  end
end
