class KpPrintsController < ApplicationController
  before_action :set_kp_print, only: [:show, :edit, :update, :destroy]

  # GET /kp_prints
  # GET /kp_prints.json
  def index
    @kp_prints = KpPrint.all
  end

  # GET /kp_prints/1
  # GET /kp_prints/1.json
  def show
  end

  # GET /kp_prints/new
  def new
    @kp_print = KpPrint.new
  end

  # GET /kp_prints/1/edit
  def edit
  end

  # POST /kp_prints
  # POST /kp_prints.json
  def create
    @kp_print = KpPrint.new(kp_print_params)

    respond_to do |format|
      if @kp_print.save
        format.html { redirect_to @kp_print, notice: 'Kp print was successfully created.' }
        format.json { render :show, status: :created, location: @kp_print }
      else
        format.html { render :new }
        format.json { render json: @kp_print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kp_prints/1
  # PATCH/PUT /kp_prints/1.json
  def update
    respond_to do |format|
      if @kp_print.update(kp_print_params)
        format.html { redirect_to @kp_print, notice: 'Kp print was successfully updated.' }
        format.json { render :show, status: :ok, location: @kp_print }
      else
        format.html { render :edit }
        format.json { render json: @kp_print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kp_prints/1
  # DELETE /kp_prints/1.json
  def destroy
    @kp_print.destroy
    respond_to do |format|
      format.html { redirect_to kp_prints_url, notice: 'Kp print was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kp_print
      @kp_print = KpPrint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kp_print_params
      params.require(:kp_print).permit(:date_received, :date_processed, :printer_number, :processed, :data)
    end
end
