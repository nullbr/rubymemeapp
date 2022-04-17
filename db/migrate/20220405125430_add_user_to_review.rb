class AddUserToReview < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :username, :string
    remove_column :reviews, :email, :string
    add_column :reviews, :user_id, :integer
    Review.delete_all
  end
end
