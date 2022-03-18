class AddFieldsToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :stars, :integer
  end
end
