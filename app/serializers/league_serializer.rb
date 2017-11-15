class LeagueSerializer < ActiveModel::Serializer
  attributes :id, :name, :season_start, :season_end, :logo, :website, :level, :indoor
  has_many :teams

end
