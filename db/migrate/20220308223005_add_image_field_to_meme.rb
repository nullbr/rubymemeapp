class AddImageFieldToMeme < ActiveRecord::Migration[6.0]
  def change
    add_column :memes, :image_file_name, :string, default: "rubylogo.png"
  end
end
