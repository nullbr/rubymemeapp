class RemoveImageFileNameFromMemes < ActiveRecord::Migration[6.0]
  def change
    remove_column :memes, :image_file_name, :string
  end
end
