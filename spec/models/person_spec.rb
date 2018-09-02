require 'rails_helper'

describe Person, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
  end

  describe 'associations' do
    it {should belong_to(:group)}
    it {should have_many(:goals).through(:person_goals)}
  end
end
