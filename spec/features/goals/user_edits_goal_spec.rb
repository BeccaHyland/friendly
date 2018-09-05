require 'rails_helper'

describe "User edits an existing goal" do
  scenario "a user links to edit a goal from the goal index" do
    goal1 = Goal.create!(description: "Happy Hour!!!", frequency: "once a month")

    visit goals_path

    click_link "Edit"
    visit edit_goal_path(goal1)

    fill_in "goal[description]", with: "Sip & Paint"
    click_button "Update"

    expect(current_path).to eq(goals_path)
    expect(page).to have_content("Sip & Paint")
    expect(page).to_not have_content("Happy Hour!!!")
  end
end
