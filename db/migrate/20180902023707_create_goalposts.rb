class CreateGoalposts < ActiveRecord::Migration[5.1]
  def change
    create_table :goalposts do |t|
      t.date :date
      t.text :comment
      t.integer :minutes

      t.timestamps
    end
  end
end
