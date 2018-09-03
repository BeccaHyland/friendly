require 'rails_helper'

describe 'user can see all groups' do
  describe 'they visit /groups' do
    it 'displays groups with associated people' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit groups_path
      save_and_open_page

      expect(page).to have_content("Work Friends")
      expect(page).to have_content("Sara")
      expect(page).to have_content("George")
    end

    it 'links to a person show from person name under goal' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit groups_path
      click_link "#{person1.name}"

      expect(current_path).to eq(edit_group_person_path(group, person1))
    end
  end
end
