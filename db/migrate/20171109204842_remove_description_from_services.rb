class RemoveDescriptionFromServices < ActiveRecord::Migration[5.1]
  def change
		remove_column :services, :description, :string
  end
end
