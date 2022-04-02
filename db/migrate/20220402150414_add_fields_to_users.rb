class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_image, :string, default: "avatar1.png"
    add_column :users, :admin_status, :boolean, default: false
  end
end
