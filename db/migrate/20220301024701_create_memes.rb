class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :name
      t.string :description
      t.string :author

      t.timestamps
    end
  end
end
