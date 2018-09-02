class Goalpost <ApplicationRecord
  belongs_to :person_goal

  validates_presence_of :date
end
