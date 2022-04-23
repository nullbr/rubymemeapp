class AddUserToMeme < ActiveRecord::Migration[6.0]
  def change
    remove_column :memes, :author, :string
    add_column :memes, :user_id, :integer
    Review.delete_all
    Like.delete_all
    Categorization.delete_all
    Meme.delete_all
  end
end
