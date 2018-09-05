class AddUsersToPersonGoals < ActiveRecord::Migration[5.1]
  def change
    add_reference :person_goals, :user, foreign_key: true
  end
end
