class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.text :note
      t.string :ebird_hotspot
      t.timestamps
    end
  end
end
