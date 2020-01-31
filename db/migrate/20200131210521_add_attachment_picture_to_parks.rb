class AddAttachmentPictureToParks < ActiveRecord::Migration[5.2]
  def self.up
    change_table :parks do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :parks, :picture
  end
end
