class TryoutsController < ApplicationController

  def index
    @tryouts = Tryout.order(start_date: :asc)
    render json: @tryouts, status: :ok
  end
end
