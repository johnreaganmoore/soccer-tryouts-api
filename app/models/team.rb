class Team < ApplicationRecord
  belongs_to :league
  has_many :tryouts, dependent: :destroy

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode
  after_initialize :geocode

# validations
  validates_presence_of :name


  def full_street_address
    "#{self.address_1}, #{self.address_2}, #{self.locality}, #{self.region}, #{self.zip}"
  end

end
