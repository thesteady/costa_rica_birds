class BirdLocations < ActiveRecord::Migration
  def change
    create_table :bird_locations do |t|
      t.references :bird
      t.references :location
      t.timestamps
    end
  end
end
