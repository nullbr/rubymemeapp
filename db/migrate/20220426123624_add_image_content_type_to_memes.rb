class AddImageContentTypeToMemes < ActiveRecord::Migration[6.0]
  def change
    add_column :memes, :image_content_type, :string
  end
end
