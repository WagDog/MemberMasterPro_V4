class CardHoldersController < ApplicationController
  before_action :set_card_holder, only: [:show, :edit, :update, :destroy]

  # GET /card_holders
  # GET /card_holders.json
  def index
    @card_holders = CardHolder.all
  end

  # GET /card_holders/1
  # GET /card_holders/1.json
  def show
  end

  # GET /card_holders/new
  def new
    @card_holder = CardHolder.new
  end

  # GET /card_holders/1/edit
  def edit
  end

  # POST /card_holders
  # POST /card_holders.json
  def create
    @card_holder = CardHolder.new(card_holder_params)

    respond_to do |format|
      if @card_holder.save
        format.html { redirect_to @card_holder, notice: 'Card holder was successfully created.' }
        format.json { render :show, status: :created, location: @card_holder }
      else
        format.html { render :new }
        format.json { render json: @card_holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_holders/1
  # PATCH/PUT /card_holders/1.json
  def update
    respond_to do |format|
      if @card_holder.update(card_holder_params)
        format.html { redirect_to @card_holder, notice: 'Card holder was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_holder }
      else
        format.html { render :edit }
        format.json { render json: @card_holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_holders/1
  # DELETE /card_holders/1.json
  def destroy
    @card_holder.destroy
    respond_to do |format|
      format.html { redirect_to card_holders_url, notice: 'Card holder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_holder
      @card_holder = CardHolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_holder_params
      params.require(:card_holder).permit(:member_id, :title, :initials, :surname, :card_number, :issue_number, :card_profile_id, :status, :valid_in_date_range, :balance_1, :balance_2, :balance_3, :balance_4, :balance_5, :birth_date, :category)
    end
end
