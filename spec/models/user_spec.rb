require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_presence_of(:password)}
  end

  describe 'associations' do
    it {should have_many :person_goals}
    it {should have_many(:goals).through(:person_goals)}
    it {should have_many(:people).through(:person_goals)}
  end

  describe 'roles' do
    it 'can be created as an admin' do
      user = User.create(username: "jean", password: "phoenix", role: 1)

      expect(user.role).to eq("admin")
      expect(user.admin?).to be_truthy
    end

    it 'can be created as a default user' do
      user = User.create(username: "logan", password: "wolverine", role: 0)

      expect(user.role).to eq("default")
      expect(user.default?).to be_truthy
    end
  end
end
