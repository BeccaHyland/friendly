require 'rails_helper'

describe 'user edits an existing person' do
  scenario "a user links to edit a person from the people index" do
    group1 = Group.create!(title: "Work Friends")
    group2 = Group.create!(title: "BFF")
    person1 = group1.people.create!(name: "Sara")
    person2 = group1.people.create!(name: "George")

    visit people_path

    within(".person_#{person1.id}") do
      click_link("Edit Person")
    end

    expect(current_path).to eq(edit_person_path(person1))

    fill_in "person[name]", with: "Sara <3"
    select group2.title, from: "person[group_id]"
    click_button "Update"

    expect(current_path).to eq(people_path)
    expect(page).to have_content("Sara <3")
    expect(page).to have_content("BFF")
  end
end
