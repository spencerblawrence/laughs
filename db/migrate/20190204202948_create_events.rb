class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :venue, null: false
      t.string :address, null: false
      t.datetime :start_date_time, null: false
      t.datetime :end_date_time
      t.integer :cost, null: false
      t.string :website
      t.text :description
      t.boolean :recurring
      t.timestamps null: false
    end
  end
end
