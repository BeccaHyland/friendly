require 'rails_helper'

describe Goalpost, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:date)}
  end

  describe 'associations' do
    it {should belong_to(:person_goal)}
  end
end
