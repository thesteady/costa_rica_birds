class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :website
      t.text :note
      t.string :ebird_id
      t.timestamps
    end
  end
end
