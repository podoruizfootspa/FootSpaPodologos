class AddAttachmentImage2ToServices < ActiveRecord::Migration[5.1]
  def self.up
    change_table :services do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :services, :image_2
  end
end
