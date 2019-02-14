class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :role, :string, default: "Fan", null: false
    add_column :users, :admin, :boolean, default: false
    add_column :users, :address, :string
    add_column :users, :lat, :float, {:precision=>10, :scale=>6}
    add_column :users, :lng, :float, {:precision=>10, :scale=>6}
    add_column :users, :profile_photo, :string
  end
end
