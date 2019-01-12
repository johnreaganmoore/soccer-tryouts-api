class LeaguesController < ApplicationController

  def index
    @leagues = League.all

    render json: @leagues, status: :ok
  end

  def show
    @league = League.find(params[:id])

    render json: @league, status: :ok
  end

  def create
    @league = League.new(league_params)

    puts league_params.inspect
    puts @league.inspect

    respond_to do |format|
      if @league.save
        format.jsonapi { render jsonapi: @league, status: :created, location: @league }
      else
        puts @league.errors.inspect
        format.jsonapi { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @league = League.find(params[:id])
    @league.update(league_params)

    respond_to do |format|
      if @league.save
        format.jsonapi { render jsonapi: @league, status: :created, location: @league }
      else
        puts @league.errors.inspect
        format.jsonapi { render json: @league.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @league = League.find(params[:id])
   @league.destroy
   head :no_content
  end

  # Only allow a trusted parameter "white list" through.
  def league_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [
      :name,
      :website,
      :logo,
      :level,
      :season_start,
      :season_end,
      :indoor,
      :marker_icon
    ])
  end

end
