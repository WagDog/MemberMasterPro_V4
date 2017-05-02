class CardSystemsController < ApplicationController
  before_action :set_card_system, only: [:show, :edit, :update, :destroy]

  # GET /card_systems
  # GET /card_systems.json
  def index
    @card_systems = CardSystem.all
  end

  # GET /card_systems/1
  # GET /card_systems/1.json
  def show
  end

  # GET /card_systems/new
  def new
    @card_system = CardSystem.new
  end

  # GET /card_systems/1/edit
  def edit
  end

  # POST /card_systems
  # POST /card_systems.json
  def create
    @card_system = CardSystem.new(card_system_params)

    respond_to do |format|
      if @card_system.save
        format.html { redirect_to @card_system, notice: 'Card system was successfully created.' }
        format.json { render :show, status: :created, location: @card_system }
      else
        format.html { render :new }
        format.json { render json: @card_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_systems/1
  # PATCH/PUT /card_systems/1.json
  def update
    respond_to do |format|
      if @card_system.update(card_system_params)
        format.html { redirect_to @card_system, notice: 'Card system was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_system }
      else
        format.html { render :edit }
        format.json { render json: @card_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_systems/1
  # DELETE /card_systems/1.json
  def destroy
    @card_system.destroy
    respond_to do |format|
      format.html { redirect_to card_systems_url, notice: 'Card system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_system
      @card_system = CardSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_system_params
      params.require(:card_system).permit(:use_site_id, :site_id, :use_issue_number, :default_time_start, :default_time_end, :use_stock_control, :use_time_attendance)
    end
end
