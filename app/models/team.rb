class Team < ApplicationRecord
  belongs_to :league

  has_many :tryouts, dependent: :destroy

# validations
  validates_presence_of :name
end
