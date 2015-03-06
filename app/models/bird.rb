class Bird < ActiveRecord::Base
  validates :name, presence: true

  has_many :bird_locations
  has_many :locations, through: :bird_locations
end