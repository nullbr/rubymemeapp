class CreateFaves < ActiveRecord::Migration[6.0]
  def change
    create_table :faves do |t|
      t.references :meme, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
