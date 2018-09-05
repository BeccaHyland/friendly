require 'rails_helper'

describe "User deletes existing goal" do
  scenario "a user clicks Delete from the Goal edit page" do
    goal1 = Goal.create!(description: "Happy Hour!!!", frequency: "once a month")

    visit edit_goal_path(goal1)
    click_link "Delete Goal"

    expect(current_path).to eq(goals_path)
    expect(page).to_not have_content("#{goal1.description}")
  end
end
