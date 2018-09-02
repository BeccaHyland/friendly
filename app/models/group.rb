class Group < ApplicationRecord
  validates_presence_of :title
  has_many :people
end
