require 'rails_helper'

describe "User creates a new goal" do
  scenario "a user links from the goals index" do
    visit goals_path

    click_link "Create New Goal"

    expect(current_path).to eq(new_goal_path)


    fill_in "goal[description]", with: "Phone call"
    fill_in "goal[frequency]", with: "once a month"
    click_button "Create"

    expect(current_path).to eq(goals_path)
    expect(page).to have_content("Phone call")
    expect(page).to have_content("once a month")
    expect(Goal.count).to eq(1)
  end
end
