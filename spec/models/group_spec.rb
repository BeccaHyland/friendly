require 'rails_helper'

describe Group, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
  end

  describe 'associations' do
    it {should have_many(:people)}
  end
end
