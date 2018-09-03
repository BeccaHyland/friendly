require 'rails_helper'

describe 'user can see all groups' do
  describe 'they visit /groups' do
    it 'displays groups with associated people' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit groups_path

      expect(page).to have_content("Work Friends")
      expect(page).to have_content("Sara")
      expect(page).to have_content("George")
    end

    it 'links to a person edit from person name under goal' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit groups_path

      click_link "#{person1.name}"

      expect(current_path).to eq(edit_group_person_path(group, person1))
    end

    it 'links to edit group page' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit groups_path

      click_link "Edit Group"

      expect(current_path).to eq(edit_group_path(group))
    end
  end
end
