# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

goal1 = Goal.create!(description: "Happy Hour", frequency: "once a month")
group2 = Group.create!(title: "Work Friends")
person1 = goal1.people.create!(name: "Sara", group_id: "#{group1.id}")
person2 = goal1.people.create!(name: "George", group_id: "#{group1.id}")

goal2 = Goal.create!(description: "Karaoke", frequency: "every other month")
group2 = Group.create!(title: "College Friends")
person3 = goal2.people.create!(name: "Laura", group_id: "#{group2.id}")
person4 = goal2.people.create!(name: "Joe", group_id: "#{group2.id}")
