class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.string 		 :title
    	t.string 		 :body
    	t.string 		 :users_name
    	t.integer		 :status
    	t.datetime 	 :created_on
    	t.references :service, index: true, foreign_key: true

      t.timestamps
    end
  end
end
