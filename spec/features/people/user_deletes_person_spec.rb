require 'rails_helper'

describe "User deletes existing person" do
  scenario "a user clicks Delete from the Person edit page" do
    group = Group.create!(title: "High School Friends")
    person1 = group.people.create!(name: "Sara")
    person2 = group.people.create!(name: "George")
    visit edit_person_path(person1)

    click_link "Delete Person"

    expect(page).to_not have_content("#{person1.name}")
    expect(current_path).to eq(people_path)
  end
end
