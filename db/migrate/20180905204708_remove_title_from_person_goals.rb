class RemoveTitleFromPersonGoals < ActiveRecord::Migration[5.1]
  def change
    remove_column :person_goals, :title, :string
  end
end
