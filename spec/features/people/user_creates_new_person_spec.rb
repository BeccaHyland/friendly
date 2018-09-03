require 'rails_helper'

describe 'user creates a new person' do
  scenario 'a user links from the people index' do
    group1 = Group.create(title: "Work Friends")
    group2 = Group.create(title: "High School Ladies")

    visit people_path

    click_link "Add New Person"

    expect(current_path).to eq(new_person_path)

    fill_in "person[name]", with: "Fiona"
    select group1.title, from: "person[group_id]"

    click_button "Create"

    expect(current_path).to eq(people_path)
    expect(page).to have_content("Fiona")
    expect(page).to have_content("Work Friends")
    expect(Person.count).to eq(1)
  end
end
