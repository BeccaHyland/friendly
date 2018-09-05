# require 'rails_helper'
#
# describe 'user can see all person_goals' do
#   describe 'user visits person show page' do
#     it 'displays only person_goals associated with that person' do
#       goal1 = Goal.create!(description: "Happy Hour", frequency: "once a month")
#       group = Group.create!(title: "Work Friends")
#       person1 = goal1.people.create!(name: "Sara", group_id: "#{group.id}")
#       person2 = goal1.people.create!(name: "George", group_id: "#{group.id}")
#       goal2 = person1.goals.create!(description: "Movie Night", frequency: "every week")
#
#       visit person_path(person1)
#
#       expect(page).to have_content(goal1.description)
#       expect(page).to have_content(goal1.frequency)
#       expect(page).to have_content(goal2.description)
#       expect(page).to have_content(goal2.frequency)
#
#     end
#   end
# end
