class AddGroupsToPeople < ActiveRecord::Migration[5.1]
  def change
    add_reference :people, :group, foreign_key: true
  end
end
