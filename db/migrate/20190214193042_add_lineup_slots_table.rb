class AddLineupSlotsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :lineup_slots do |t|
      t.belongs_to :comedian, null: false
      t.belongs_to :gig, null: false
      t.timestamps null: false
    end
  end
end
