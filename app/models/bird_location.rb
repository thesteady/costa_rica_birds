class BirdLocation < ActiveRecord::Base
  belongs_to :bird
  belongs_to :location
end