class GatePassesController < ApplicationController
    # POST /gate_passes
    def create
      # Generate a gate pass for the order
      # For demonstration purposes, we'll assume a gate pass is created with some basic information.
      @gate_pass = GatePass.create(
        order_id: params[:order_id],
        issued_by: params[:issued_by], # Adjust based on your actual gate pass attributes
        issued_at: params[:issued_at]
      )
  
      if @gate_pass.save
        render json: @gate_pass, status: :created, location: @gate_pass
      else
        render json: @gate_pass.errors, status: :unprocessable_entity
      end
    end
  
    # Other actions like show, update, destroy can be added based on your requirements
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_gate_pass
      @gate_pass = GatePass.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def gate_pass_params
      params.require(:gate_pass).permit(:order_id, :issued_by, :issued_at) # Add other permitted parameters
    end
  end
  