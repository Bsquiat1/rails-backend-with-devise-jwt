class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]
    before_action :set_customer, only: [:create]
  
    # POST /orders
    def create
      @order = @customer.orders.build(order_params)
  
      if @order.save
        render json: @order, status: :created, location: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /orders/1/confirm
    def confirm
      if @order.update(confirmed: true)
        render json: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end
   # PATCH/PUT /orders/1/receive_payment
   def receive_payment
    # For demonstration purposes, we'll mark the order as paid by updating a field.
    if @order.update(payment_received: true)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end
  
   
  # PATCH/PUT /orders/1/send_load_authority
  def send_load_authority
    # For demonstration purposes, we'll mark the order as load authority sent by updating a field.
    if @order.update(load_authority_sent: true)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end
  
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end
  
    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:confirmed, :loading_depot_id) 
    end
  end
  