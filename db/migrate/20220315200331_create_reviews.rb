class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :username
      t.string :email
      t.text :review
      t.references :meme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
