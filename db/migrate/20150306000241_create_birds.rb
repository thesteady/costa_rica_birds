class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name, null: false
      t.integer :rank
      t.text :description
      t.timestamps
    end
  end
end
