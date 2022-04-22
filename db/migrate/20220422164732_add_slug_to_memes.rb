class AddSlugToMemes < ActiveRecord::Migration[6.0]
  def change
    add_column :memes, :slug, :string
  end
end
