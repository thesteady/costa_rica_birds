class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name, null: false
      t.text :description
      t.integer :number_of_locations
      t.boolean :priority
      t.timestamps
    end
  end
end
