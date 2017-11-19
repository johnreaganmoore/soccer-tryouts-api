class TeamsController < ApplicationController
  def index
    @teams = Team.all

    render json: @teams, status: :ok
  end

  def show
    @team = Team.find(params[:id])

    render json: @team, status: :ok
  end

  def create
    @team = Team.new(team_params)

    puts team_params.inspect
    puts @team.inspect

    respond_to do |format|
      if @team.save
        format.jsonapi { render jsonapi: @team, status: :created, location: @team }
      else
        puts @team.errors.inspect
        format.jsonapi { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)

    respond_to do |format|
      if @team.save
        format.jsonapi { render jsonapi: @team, status: :created, location: @team }
      else
        puts @team.errors.inspect
        format.jsonapi { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @team = Team.find(params[:id])
   @team.destroy
   head :no_content
  end

  # Only allow a trusted parameter "white list" through.
  def team_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [
      :name,
      :website,
      :logo,
      :address_1,
      :address_2,
      :locality,
      :region,
      :zip,
      :league
    ])
  end

end
