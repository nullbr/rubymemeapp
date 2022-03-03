class AddFieldsToMeme < ActiveRecord::Migration[6.0]
  def change
    add_column :memes, :stars, :integer
    add_column :memes, :review, :text
  end
end
