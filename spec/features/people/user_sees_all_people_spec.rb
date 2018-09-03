require 'rails_helper'

describe 'user can see all people' do
  describe 'they visit /people' do
    it 'displays each person with its group title' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit people_path

      expect(page).to have_content("Sara")
      expect(page).to have_content("George")
      expect(page).to have_content("Work Friends")
    end
  end
end
