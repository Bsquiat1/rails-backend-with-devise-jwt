class MainlinesController < ApplicationController
  before_action :set_mainline, only: [:show, :update, :destroy]

  # GET /mainlines
  def index
    @mainlines = Mainline.all
    render json: @mainlines
  end

  # GET /mainlines/1
  def show
    render json: @mainline
  end

  # POST /mainlines
  def create
    @mainline = Mainline.new(mainline_params)

    if @mainline.save
      render json: @mainline, status: :created, location: @mainline
    else
      render json: @mainline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mainlines/1
  def update
    if @mainline.update(mainline_params)
      render json: @mainline
    else
      render json: @mainline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mainlines/1
  def destroy
    @mainline.destroy
  end

  def destroy_all
    LoadingDepot.destroy_all

    render json: { message: 'All Mainlines have been deleted' }
  end


  private

  def set_mainline
    @mainline = Mainline.find(params[:id])
  end

  def mainline_params
    params.require(:mainline).permit(:fuel_type, :quantity)
  end
end

