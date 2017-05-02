class CardProfilesController < ApplicationController
  before_action :set_card_profile, only: [:show, :edit, :update, :destroy]

  # GET /card_profiles
  # GET /card_profiles.json
  def index
    @card_profiles = CardProfile.all
  end

  # GET /card_profiles/1
  # GET /card_profiles/1.json
  def show
  end

  # GET /card_profiles/new
  def new
    @card_profile = CardProfile.new
  end

  # GET /card_profiles/1/edit
  def edit
  end

  # POST /card_profiles
  # POST /card_profiles.json
  def create
    @card_profile = CardProfile.new(card_profile_params)

    respond_to do |format|
      if @card_profile.save
        format.html { redirect_to @card_profile, notice: 'Card profile was successfully created.' }
        format.json { render :show, status: :created, location: @card_profile }
      else
        format.html { render :new }
        format.json { render json: @card_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_profiles/1
  # PATCH/PUT /card_profiles/1.json
  def update
    respond_to do |format|
      if @card_profile.update(card_profile_params)
        format.html { redirect_to @card_profile, notice: 'Card profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_profile }
      else
        format.html { render :edit }
        format.json { render json: @card_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_profiles/1
  # DELETE /card_profiles/1.json
  def destroy
    @card_profile.destroy
    respond_to do |format|
      format.html { redirect_to card_profiles_url, notice: 'Card profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_profile
      @card_profile = CardProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_profile_params
      params.require(:card_profile).permit(:name, :description, :valid_in_date_range, :date_range_start, :date_range_end, :credit_limit_purse_1, :credit_limit_purse_2, :credit_limit_purse_3, :credit_limit_purse_4, :credit_limit_purse_5, :discount_on_overdrawn_1, :discount_on_overdrawn_2, :discount_on_overdrawn_3, :discount_on_overdrawn_4, :discount_on_overdrawn_5, :pay_by_cash)
    end
end
