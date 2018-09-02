class Person < ApplicationRecord
  belongs_to :group
  has_many :person_goals
  has_many :goals, through: :person_goals

  validates_presence_of :name
end
