class TryoutSerializer < ActiveModel::Serializer
  attributes :id, :label, :start_date, :end_date, :fee, :info, :registration, :locality, :region, :team_name, :team_logo, :league_logo
  belongs_to :team

  def team_name
    object.team.name
  end

  def team_logo
    object.team.logo
  end

  def league_logo
    object.team.league.logo
  end

end
