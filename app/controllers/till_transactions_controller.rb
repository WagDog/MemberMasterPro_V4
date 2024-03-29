class TillTransactionsController < ApplicationController
  before_action :set_till_transaction, only: [:show, :edit, :update, :destroy]

  # GET /till_transactions
  # GET /till_transactions.json
  def index
    @till_transactions = TillTransaction.all
  end

  # GET /till_transactions/1
  # GET /till_transactions/1.json
  def show
  end

  # GET /till_transactions/new
  def new
    @till_transaction = TillTransaction.new
  end

  # GET /till_transactions/1/edit
  def edit
  end

  # POST /till_transactions
  # POST /till_transactions.json
  def create
    @till_transaction = TillTransaction.new(till_transaction_params)

    respond_to do |format|
      if @till_transaction.save
        format.html { redirect_to @till_transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @till_transaction }
      else
        format.html { render :new }
        format.json { render json: @till_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /till_transactions/1
  # PATCH/PUT /till_transactions/1.json
  def update
    respond_to do |format|
      if @till_transaction.update(till_transaction_params)
        format.html { redirect_to @till_transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @till_transaction }
      else
        format.html { render :edit }
        format.json { render json: @till_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /till_transactions/1
  # DELETE /till_transactions/1.json
  def destroy
    @till_transaction.destroy
    respond_to do |format|
      format.html { redirect_to till_transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_till_transaction
      @till_transaction = TillTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def till_transaction_params
      params.require(:till_transaction).permit(:site_id, :location_id, :till_id, :start_date_time, :end_date_time, :receipt_number, :cashier_id, :cashier_name, :medium_id, :medium_name, :total_amount, :total_discounted_amount, :total_nett_amount, :total_vat_amount, :total_discount, :total_topup, :total_paid_out, :total_surcharge, :amount_tendered, :change_given, :no_sale, :card_holder_id, :card_number, :card_name, :amount_purse_1, :discounted_amount_purse_1, :nett_amount_purse_1, :discount_purse_1, :surcharge_purse_1, :vat_amount_purse_1, :start_balance_purse_1, :end_balance_purse_1, :amount_purse_2, :discounted_amount_purse_2, :nett_amount_purse_2, :discount_purse_2, :surcharge_purse_2, :vat_amount_purse_2, :start_balance_purse_2, :end_balance_purse_2, :amount_purse_3, :discounted_amount_purse_3, :nett_amount_purse_3, :discount_purse_3, :surcharge_purse_3, :vat_amount_purse_3, :start_balance_3, :end_balance_3, :amount_purse_4, :discounted_amount_purse_4, :nett_amount_purse_4, :discount_purse_4, :surcharge_purse_4, :vat_amount_purse_4, :start_balance_4, :end_balance_4, :amount_purse_5, :discounted_amount_purse_5, :nett_amount_purse_5, :discount_purse_5, :surcharge_purse_5, :vat_amount_purse_5, :start_balance_5, :end_balance_5, :did_not_make_it, :finalised)
    end
end
