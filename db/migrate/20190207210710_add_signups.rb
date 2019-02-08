class AddSignups < ActiveRecord::Migration[5.2]
  def change
    create_table :signups do |t|
      t.belongs_to :user, null: false
      t.belongs_to :event, null: false
      t.timestamps null: false
    end
  end
end
