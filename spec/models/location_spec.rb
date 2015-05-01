require 'rails_helper'

describe Location do
  describe 'Association' do
    it { should have_many :bird_locations }
  end
end