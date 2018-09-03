require 'rails_helper'

describe "User edits an existing group" do
  scenario "a user links to edit a group from the group index" do
    group = Group.create!(title: "High School Friends")
    visit edit_group_path(group)

    fill_in "group[title]", with: "High School Ladies"
    click_button "Update"

    expect(current_path).to eq(groups_path)
    expect(page).to have_content("High School Ladies")
    expect(page).to_not have_content("High School Friends")
  end
end
