class AddUrlFieldToMeme < ActiveRecord::Migration[6.0]
  def change
    add_column :memes, :image_url, :string
  end
end
