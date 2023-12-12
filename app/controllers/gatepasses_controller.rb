class GatepassesController < ApplicationController
  load_and_authorize_resource
  before_action :set_gatepass, only: [:show, :update, :destroy]

  def index
    @gatepasses = Gatepass.accessible_by(current_ability)
    render json: @gatepasses, status: :ok
  end

  def show 
    render json: @gatepass, status: :ok
  end

  def create
    @gatepass = current_user.gatepasses.new(gatepass_params)
    if @gatepass.save
      render json: @gatepass, status: :ok
    else
      render json: { errors: @gatepass.errors.full_messages, status: "failed" }, 
             status: :unprocessable_entity
    end
  end

  def update
    if @gatepass.update(gatepass_params)
      render json: @gatepass, status: :ok
    else
      render json: { errors: @gatepass.errors.full_messages, status: "failed" }, 
             status: :unprocessable_entity
    end
  end

  def destroy
    if @gatepass.destroy
      render json: { message: 'Gatepass deleted successfully', status: 'success' }, 
             status: :ok
    else
      render json: { message: 'Something went wrong', status: 'fail' }
    end
  end

  private

  def set_gatepass
    @gatepass = Gatepass.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
    render json: error.message, status: :unauthorized
  end

  def gatepass_params
    params.require(:gatepass).permit(:user_id, :depot, :product_type, :quantity_leaving, :destination, :vehicle_details)
  end
end
