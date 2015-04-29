class AddUrlAndAttributionToBirds < ActiveRecord::Migration
  def change
    add_column :birds, :url, :string
    add_column :birds, :attribution, :string
  end
end
