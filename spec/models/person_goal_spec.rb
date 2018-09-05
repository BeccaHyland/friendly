require 'rails_helper'

describe PersonGoal do
  describe 'validations' do
    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:person_id)}
    it {should validate_presence_of(:goal_id)}
  end

  describe 'associations' do
    it {should have_many(:goalposts)}
  end
end
