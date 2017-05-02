class CardDiscountsController < ApplicationController
  before_action :set_card_discount, only: [:show, :edit, :update, :destroy]

  # GET /card_discounts
  # GET /card_discounts.json
  def index
    @card_discounts = CardDiscount.all
  end

  # GET /card_discounts/1
  # GET /card_discounts/1.json
  def show
  end

  # GET /card_discounts/new
  def new
    @card_discount = CardDiscount.new
  end

  # GET /card_discounts/1/edit
  def edit
  end

  # POST /card_discounts
  # POST /card_discounts.json
  def create
    @card_discount = CardDiscount.new(card_discount_params)

    respond_to do |format|
      if @card_discount.save
        format.html { redirect_to @card_discount, notice: 'Card discount was successfully created.' }
        format.json { render :show, status: :created, location: @card_discount }
      else
        format.html { render :new }
        format.json { render json: @card_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_discounts/1
  # PATCH/PUT /card_discounts/1.json
  def update
    respond_to do |format|
      if @card_discount.update(card_discount_params)
        format.html { redirect_to @card_discount, notice: 'Card discount was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_discount }
      else
        format.html { render :edit }
        format.json { render json: @card_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_discounts/1
  # DELETE /card_discounts/1.json
  def destroy
    @card_discount.destroy
    respond_to do |format|
      format.html { redirect_to card_discounts_url, notice: 'Card discount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_discount
      @card_discount = CardDiscount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_discount_params
      params.require(:card_discount).permit(:name, :description, :discount_type, :amount)
    end
end
