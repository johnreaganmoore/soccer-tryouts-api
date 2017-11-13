class League < ApplicationRecord
  has_many :teams

# validations
  validates_presence_of :name
end
