class PersonGoal < ApplicationRecord
  belongs_to :person
  belongs_to :goal
  has_many :goalposts

  validates_presence_of :person_id, :goal_id
end
