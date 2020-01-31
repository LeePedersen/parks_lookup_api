class RemoveParksColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :parks, :picture_content_type
    remove_column :parks, :picture_file_size
    remove_column :parks, :picture_updated_at
  end
end
