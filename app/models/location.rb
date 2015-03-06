class Location < ActiveRecord::Base
  validates :name, presence: true

  has_many :bird_locations
  has_many :birds, through: :bird_locations


  def ebird_link
    "http://ebird.org/ebird/hotspot/" + ebird_id
  end
end