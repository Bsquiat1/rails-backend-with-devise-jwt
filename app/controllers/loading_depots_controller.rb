class LoadingDepotsController < ApplicationController
  before_action :set_loading_depot, only: [:show, :update, :destroy]

  # GET /loading_depots
  def index
    @loading_depots = LoadingDepot.all
    render json: @loading_depots
  end

  # GET /loading_depots/1
  def show
    render json: @loading_depot
  end

  # POST /loading_depots
  def create
    @loading_depot = LoadingDepot.new(loading_depot_params)

    if @loading_depot.save
      render json: @loading_depot, status: :created, location: @loading_depot
    else
      render json: @loading_depot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loading_depots/1
  def update
    if @loading_depot.update(loading_depot_params)
      render json: @loading_depot
    else
      render json: @loading_depot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loading_depots/1
  def destroy
    @loading_depot.destroy
  end

  def destroy_all
    LoadingDepot.destroy_all

    render json: { message: 'All Loading Depots have been deleted' }
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_loading_depot
    @loading_depot = LoadingDepot.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def loading_depot_params
    params.require(:loading_depot).permit(:name, :location, :contact, products: [:id, :name, :quantity]) 
  end
end

