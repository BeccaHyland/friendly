class Goal < ApplicationRecord
  has_many :person_goals
  has_many :people, through: :person_goals

  validates_presence_of :description
end
