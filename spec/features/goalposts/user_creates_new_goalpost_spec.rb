require 'rails_helper'

describe 'user creates a new goalpost' do
  scenario 'a user links from the nav bar' do
    group1 = Group.create(title: "Work Friends")
    person1 = Person.create(name: "Peter", group_id: group1.id)
    goal1 = Goal.create!(description: "Happy Hour!!!", frequency: "once a month")
    person_goal1 = PersonGoal.create!(goal_id: goal1.id, person_id: person1.id)

    visit root_path

    click_link "Log New Goalpost"

    expect(current_path).to eq(new_goalpost_path)

    fill_in "goalpost[date]", with: "2018/01/08"
    select goal1.title, from: "goalpost[goal_id]"
    select person1.name, from: "goalpost[person_id]"
    fill_in "goalpost[comment]", with: "met at Brothers' for HH"
    fill_in "goalpost[minutes]", with: 95

    click_button "Create"

    expect(current_path).to eq(person_goal_goalposts_path(person_goal1.id))
    expect(page).to have_content(goal1.title)
    expect(page).to have_content("Peter")
    expect(page).to have_content("08/01/2018")
    expect(Goalpost.count).to eq(1)
  end
end
