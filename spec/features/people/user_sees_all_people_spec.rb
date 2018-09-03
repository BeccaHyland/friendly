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

    it 'links to a person show from person name under goal' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit people_path

      click_link "#{person1.name}"

      expect(current_path).to eq(person_path(person1))
    end

    it 'links to a person edit from link by person name' do
      group = Group.create!(title: "Work Friends")
      person1 = group.people.create!(name: "Sara")
      person2 = group.people.create!(name: "George")

      visit people_path

      within(".person_#{person1.id}") do
        click_link "Edit Person"
      end

      expect(current_path).to eq(edit_group_person_path(group, person1))
    end
  end
end
