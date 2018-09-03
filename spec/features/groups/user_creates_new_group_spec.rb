require 'rails_helper'

describe "User creates a new group" do
  scenario "a user links from the groups index" do
    visit groups_path

    click_link "Create New Group"

    expect(current_path).to eq(new_group_path)


    fill_in "group[title]", with: "Family"
    click_button "Create"

    expect(current_path).to eq(groups_path)
    expect(page).to have_content("Family")
    expect(Group.count).to eq(1)
  end
end
