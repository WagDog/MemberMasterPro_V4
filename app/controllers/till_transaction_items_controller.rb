class TillTransactionItemsController < ApplicationController
  before_action :set_till_transaction_item, only: [:show, :edit, :update, :destroy]

  # GET /till_transaction_items
  # GET /till_transaction_items.json
  def index
    @till_transaction_items = TillTransactionItem.all
  end

  # GET /till_transaction_items/1
  # GET /till_transaction_items/1.json
  def show
  end

  # GET /till_transaction_items/new
  def new
    @till_transaction_item = TillTransactionItem.new
  end

  # GET /till_transaction_items/1/edit
  def edit
  end

  # POST /till_transaction_items
  # POST /till_transaction_items.json
  def create
    @till_transaction_item = TillTransactionItem.new(till_transaction_item_params)

    respond_to do |format|
      if @transaction_item.save
        format.html { redirect_to @till_transaction_item, notice: 'Transaction item was successfully created.' }
        format.json { render :show, status: :created, location: @till_transaction_item }
      else
        format.html { render :new }
        format.json { render json: @till_transaction_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /till_transaction_items/1
  # PATCH/PUT /till_transaction_items/1.json
  def update
    respond_to do |format|
      if @till_transaction_item.update(till_transaction_item_params)
        format.html { redirect_to @till_transaction_item, notice: 'Transaction item was successfully updated.' }
        format.json { render :show, status: :ok, location: @till_transaction_item }
      else
        format.html { render :edit }
        format.json { render json: @till_transaction_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /till_transaction_items/1
  # DELETE /till_transaction_items/1.json
  def destroy
    @till_transaction_item.destroy
    respond_to do |format|
      format.html { redirect_to till_transaction_items_url, notice: 'Transaction item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_till_transaction_item
      @till_transaction_item = TillTransactionItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def till_transaction_item_params
      params.require(:till_transaction_item).permit(:till_transaction_id, :cashier_id, :plu_id, :plu_name, :plu_factor, :plu_factor_entered, :plu_price, :plu_price_level, :plu_group_id, :plu_price_level_1, :plu_cost, :vat_id, :void, :sale_date_time, :rp_sort_group_id, :kp_printed, :condiment, :purse_no, :line_amount, :discounted_amount, :single_discounted_amount, :nett_amount, :discount, :surcharge_amount, :vat_amount, :single_vat_amount, :add_surcharge)
    end
end
