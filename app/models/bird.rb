class Bird < ActiveRecord::Base
  # Paperclip:
  has_attached_file :photo, styles: { medium: "300x300>", thumbnail: "100x100>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true
  #validates presence of :attribution if photo

  has_many :bird_locations
  has_many :locations, through: :bird_locations

  attr_reader :photo_remote_url

  def photo_remote_url=(remote_url)
    self.photo = URI.parse(remote_url)
    self.url = remote_url #save the original url for later, too
    @photo_remote_url = remote_url
  end
end