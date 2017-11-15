class LeaguesController < ApplicationController

  def index
    @leagues = League.all

    render json: @leagues, status: :ok
  end

  def show
    @league = League.find(params[:id])

    render json: @league, status: :ok
  end

end
