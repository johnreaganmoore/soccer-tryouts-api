class TryoutsController < ApplicationController

  def index
    @tryouts = Tryout.order(start_date: :asc)
    render json: @tryouts, status: :ok
  end

  def show
    @tryout = Tryout.find(params[:id])

    render json: @tryout, status: :ok
  end
end
