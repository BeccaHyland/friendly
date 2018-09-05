class User < ApplicationRecord
  has_many :person_goals
  has_many :people, through: :person_goals
  has_many :goals, through: :person_goals

  validates_presence_of :password
  validates :username, presence: true, uniqueness: true

  has_secure_password

  enum role: ["default", "admin"]
end
