class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :season_start, :season_end, :logo, :website, :level, :indoor, :marker_icon
  has_many :teams

end
