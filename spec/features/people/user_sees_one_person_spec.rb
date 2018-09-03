require 'rails_helper'

describe "User sees person show page" do
  scenario "a user sees a person, its group, and link to index" do

    group = Group.create!(title: "Work Friends")
    person1 = group.people.create!(name: "Sara", birthday: DateTime.parse('1985-6-20'))
    person2 = group.people.create!(name: "George")

    visit person_path(person1)

    expect(current_path).to eq(person_path(person1))
    expect(page).to have_content("Sara")
    expect(page).to have_content("Work Friends")
    expect(page).to have_content("06/20/1985")
    expect(page).to have_link("<< Back to My People")
  end

end
