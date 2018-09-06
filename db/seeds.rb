# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(username: "malcolm", password: "captain", role: 1)

user_2 = User.create(username: "zoe", password: "firstmate", role: 0)

goal_1 = Goal.create!(description: "a quiet drink", frequency: "annually")
goal_2 = Goal.create!(description: "be regular heroes", frequency: "weekly")
group_1 = Group.create!(title: "Crewmates")
group_2 = Group.create!(title: "Family")
person_1 = Person.create!(name: "The Man They Call Jayne", group_id: group_1.id)
person_2 = Person.create!(name: "Kaylee", group_id: group_1.id)
person_3 = Person.create!(name: "Wash", group_id: group_2.id)
person_goal_1 = PersonGoal.create!(user_id: user_2.id, goal_id: goal_1.id, person_id: person_1.id)
person_goal_2 = PersonGoal.create!(user_id: user_2.id, goal_id: goal_2.id, person_id: person_1.id)
person_goal_3 = PersonGoal.create!(user_id: user_2.id, goal_id: goal_2.id, person_id: person_2.id)
person_goal_4 = PersonGoal.create!(user_id: user_2.id, goal_id: goal_2.id, person_id: person_3.id)

# user_3 = User.create(username: "wash", password: "pilot", role: 0)
#
# goal_3 = Goal.create!(description: "relax planetside", frequency: "annually")
# goal_4 = Goal.create!(description: "be a leaf on the wind", frequency: "weekly")
# group_3 = Group.create!(title: "Stowaways")
# group_4 = Group.create!(title: "Loved Ones")
# person_4 = Person.create!(name: "Simon", group_id: group_3.id)
# person_5 = Person.create!(name: "River", group_id: group_3.id)
# person_6 = Person.create!(name: "Zoe", group_id: group_4.id)
# person_goal_1 = PersonGoal.create!(user_id: user_3.id, goal_id: goal_3.id, person_id: person_4.id)
# person_goal_2 = PersonGoal.create!(user_id: user_3.id, goal_id: goal_4.id, person_id: person_5.id)
# person_goal_3 = PersonGoal.create!(user_id: user_3.id, goal_id: goal_4.id, person_id: person_5.id)
# person_goal_4 = PersonGoal.create!(user_id: user_3.id, goal_id: goal_4.id, person_id: person_6.id)
