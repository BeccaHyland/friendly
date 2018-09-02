require 'rails_helper'

describe PersonGoal do
  describe 'associations' do
    it {should have_many(:goalposts)}
  end
end
