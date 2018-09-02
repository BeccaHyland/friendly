class PersonGoal < ApplicationRecord
  belongs_to :person
  belongs_to :goal
  has_many :goalposts
end
