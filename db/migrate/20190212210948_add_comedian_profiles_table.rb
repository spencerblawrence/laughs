class AddComedianProfilesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :comedian_profiles do |t|
      t.belongs_to :user, null: false

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :city_state
      t.string :website
      t.string :photo1, null: false
      t.text :description1, null: false
      t.text :description2
      t.text :description3
      t.string :video1
      t.string :video2
      t.string :video3

      t.timestamps null: false
    end
  end
end
