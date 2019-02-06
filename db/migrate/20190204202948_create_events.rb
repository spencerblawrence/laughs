class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description
      t.string :location, null: false
      t.string :cost, null: false
      t.datetime :start_date_time, null: false
      t.datetime :end_date_time
      t.string :website
    end
  end
end
