class AddPersonGoalsToGoalposts < ActiveRecord::Migration[5.1]
  def change
    add_reference :goalposts, :person_goal, foreign_key: true
  end
end
