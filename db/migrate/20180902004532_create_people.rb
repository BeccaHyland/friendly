class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.date :important_date
      t.string :important_date_text

      t.timestamps
    end
  end
end
