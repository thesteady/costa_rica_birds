class AddFlickrUrlToBird < ActiveRecord::Migration
  def change
    add_column :birds, :flickr_url, :string
  end
end
