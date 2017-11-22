class TryoutsController < ApplicationController

  def index
    @tryouts = Tryout.where("DATE(start_date) >= ?", Date.today).order(start_date: :asc)
    render json: @tryouts, status: :ok
  end

  def show
    @tryout = Tryout.find(params[:id])

    render json: @tryout, status: :ok
  end


  def create
    @tryout = Tryout.new(tryout_params)

    puts tryout_params.inspect
    puts @tryout.inspect

    respond_to do |format|
      if @tryout.save
        format.jsonapi { render jsonapi: @tryout, status: :created, location: @tryout }
      else
        puts @tryout.errors.inspect
        format.jsonapi { render json: @tryout.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tryout = Tryout.find(params[:id])
    @tryout.update(tryout_params)

    respond_to do |format|
      if @tryout.save
        format.jsonapi { render jsonapi: @tryout, status: :created, location: @tryout }
      else
        puts @tryout.errors.inspect
        format.jsonapi { render json: @tryout.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
   @tryout = Tryout.find(params[:id])
   @tryout.destroy
   head :no_content
  end

  # Only allow a trusted parameter "white list" through.
  def tryout_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:label, :start_date, :end_date, :fee, :info, :registration, :locality, :region, :team] )
  end

end
