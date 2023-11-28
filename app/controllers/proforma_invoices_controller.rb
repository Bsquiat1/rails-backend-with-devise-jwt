class ProformaInvoiceRowsController < ApplicationController
  before_action :set_proforma_invoice_row, only: [:show, :update, :destroy]
  before_action :set_proforma_invoice, only: [:create]

  # GET /proforma_invoice_rows
  def index
    @proforma_invoice_rows = ProformaInvoiceRow.all
    render json: @proforma_invoice_rows
  end

  # GET /proforma_invoice_rows/1
  def show
    render json: @proforma_invoice_row
  end

  # POST /proforma_invoice_rows
  def create
      @proforma_invoice_row = ProformaInvoiceRow.new(proforma_invoice_row_params)
  
      if @proforma_invoice_row.save
        render json: @proforma_invoice_row, status: :created, location: @proforma_invoice_row
      else
        render json: @proforma_invoice_row.errors, status: :unprocessable_entity
      end
    end

  # PATCH/PUT /proforma_invoice_rows/1
  def update
    if @proforma_invoice_row.update(proforma_invoice_row_params)
      render json: @proforma_invoice_row
    else
      render json: @proforma_invoice_row.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proforma_invoice_rows/1
  def destroy
    @proforma_invoice_row.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proforma_invoice_row
      @proforma_invoice_row = ProformaInvoiceRow.find(params[:id])
    end

    def set_proforma_invoice
      @proforma_invoice = ProformaInvoice.find(params[:proforma_invoice_id])
    end

    # Only allow a list of trusted parameters through.
    def proforma_invoice_row_params
      params.require(:proforma_invoice_row).permit(:description, :unit_price, :quantity, :total, :proforma_invoice_id)
    end
end

