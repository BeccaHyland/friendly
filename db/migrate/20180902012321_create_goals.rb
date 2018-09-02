class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :description
      t.float :hours
      t.integer :number_of_times
      t.string :choice_of_unit

      t.timestamps
    end
  end
end
