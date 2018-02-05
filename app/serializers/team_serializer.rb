class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :website, :logo, :address_1, :address_2, :locality, :region, :zip, :latitude, :longitude
  belongs_to :league
  has_many :tryouts

end
