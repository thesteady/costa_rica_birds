require 'rails_helper'

describe BirdLocation do
  describe 'Associations' do
    it { should belong_to :bird }
    it { should belong_to :location}
  end
end