class InvoicesController < ApplicationController
  # POST /invoices
  def create
    # Generate the final invoice for the order
    
    @invoice = Invoice.create( 
      order_id: params[:order_id],
      invoice_number: params[:invoice_number],
      bill_amount: params[:bill_amount], 
      amount_paid: params[:amount_paid],
      billing_date: params[:billing_date],
      due_date: params[:due_date]
     
    )

    if @invoice.save
      render json: @invoice, status: :created, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  def index
    @invoices = Invoice.all 
    render json: @invoices
  end

  # GET /invoices/:id
  def show
    set_invoice
    render json: @invoice
  end

  # PATCH /invoices/:id
  def update
    set_invoice

    if @invoice.update(invoice_params)
      render json: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoices/:id
  def destroy
    set_invoice
    @invoice.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice).permit(:order_id, :bill_amount, :due_date, :invoice_number, :amount_paid, :billing_date) 
  end
end
