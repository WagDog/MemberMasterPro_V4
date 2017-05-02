class CardRevenuesController < ApplicationController
  before_action :set_card_revenue, only: [:show, :edit, :update, :destroy]

  # GET /card_revenues
  # GET /card_revenues.json
  def index
    @card_revenues = CardRevenue.all
  end

  # GET /card_revenues/1
  # GET /card_revenues/1.json
  def show
  end

  # GET /card_revenues/new
  def new
    @card_revenue = CardRevenue.new
  end

  # GET /card_revenues/1/edit
  def edit
  end

  # POST /card_revenues
  # POST /card_revenues.json
  def create
    @card_revenue = CardRevenue.new(card_revenue_params)

    respond_to do |format|
      if @card_revenue.save
        format.html { redirect_to @card_revenue, notice: 'Card revenue was successfully created.' }
        format.json { render :show, status: :created, location: @card_revenue }
      else
        format.html { render :new }
        format.json { render json: @card_revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_revenues/1
  # PATCH/PUT /card_revenues/1.json
  def update
    respond_to do |format|
      if @card_revenue.update(card_revenue_params)
        format.html { redirect_to @card_revenue, notice: 'Card revenue was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_revenue }
      else
        format.html { render :edit }
        format.json { render json: @card_revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_revenues/1
  # DELETE /card_revenues/1.json
  def destroy
    @card_revenue.destroy
    respond_to do |format|
      format.html { redirect_to card_revenues_url, notice: 'Card revenue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_revenue
      @card_revenue = CardRevenue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_revenue_params
      params.require(:card_revenue).permit(:name, :groups)
    end
end
