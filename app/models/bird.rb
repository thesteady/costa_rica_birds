class Bird < ActiveRecord::Base
  # Paperclip:
  has_attached_file :photo, styles: { medium: "300x300>", thumbnail: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true

  has_many :bird_locations
  has_many :locations, through: :bird_locations
end