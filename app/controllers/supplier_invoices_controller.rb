class SupplierInvoicesController < ApplicationController
    before_action :set_invoice, only: [:show, :edit, :update, :destroy]
  
    # GET /supplier_invoices
    def index
      @invoices = Invoice.all
    end
  
    # GET /supplier_invoices/1
    def show
    end
  
    # GET /supplier_invoices/new
    def new
      @invoice = Invoice.new
    end
  
    # GET /supplier_invoices/1/edit
    def edit
    end
  
    # POST /supplier_invoices
    def create
      @invoice = Invoice.new(invoice_params)
  
      if @invoice.save
        redirect_to @invoice, notice: 'Invoice was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /supplier_invoices/1
    def update
      if @invoice.update(invoice_params)
        redirect_to @invoice, notice: 'Invoice was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /supplier_invoices/1
    def destroy
      @invoice.destroy
      redirect_to supplier_invoices_url, notice: 'Invoice was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_invoice
        @invoice = Invoice.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def invoice_params
        params.require(:invoice).permit(:invoice_number, :date, :amount, :supplier_id)
      end
  end
  
