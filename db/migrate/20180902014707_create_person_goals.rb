class CreatePersonGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :person_goals do |t|
      t.references :goal, foreign_key: true
      t.references :person, foreign_key: true
    end
  end
end
