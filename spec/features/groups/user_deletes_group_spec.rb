require 'rails_helper'

describe "User deletes existing group" do
  scenario "a user clicks Delete from the Group edit page" do
    group = Group.create!(title: "High School Friends")
    person1 = group.people.create!(name: "Sara")
    person2 = group.people.create!(name: "George")
    visit edit_group_path(group)

    click_link "Delete Group and its People"

    expect(page).to_not have_content("#{group.title}")
    expect(current_path).to eq(groups_path)
  end
end
