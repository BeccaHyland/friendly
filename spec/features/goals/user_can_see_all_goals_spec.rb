require 'rails_helper'

describe 'user can see all goals' do
  describe 'they visit /goals' do
    it 'displays goals with associated people' do
      goal1 = Goal.create!(description: "Happy Hour", frequency: "once a month")
      group = Group.create!(title: "Work Friends")
      person1 = goal1.people.create!(name: "Sara", group_id: "#{group.id}")
      person2 = goal1.people.create!(name: "George", group_id: "#{group.id}")

      visit goals_path

      expect(page).to have_content("Happy Hour")
      expect(page).to have_content("Sara")
      expect(page).to have_content("George")
    end
  end
end
