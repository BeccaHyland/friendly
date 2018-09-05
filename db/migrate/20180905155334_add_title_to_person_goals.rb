class AddTitleToPersonGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :person_goals, :title, :string
  end
end
