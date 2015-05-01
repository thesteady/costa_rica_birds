require 'rails_helper'

describe Bird do
  describe 'Validations' do
    it { should validate_presence_of :name }
  end

  describe 'Associations' do
    it { should have_many :bird_locations }
    it { should have_many(:locations).through(:bird_locations) }
  end
end

