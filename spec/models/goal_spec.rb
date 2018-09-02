require 'rails_helper'

describe Goal, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:description)}
  end

  describe 'associations' do
    it {should have_many(:people).through(:person_goals)}
  end
end
