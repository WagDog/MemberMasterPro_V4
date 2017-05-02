class TillsController < ApplicationController
  before_action :set_till, only: [:show, :edit, :update, :destroy]

  # GET /tills
  # GET /tills.json
  def index
    @tills = Till.all
  end

  # GET /tills/1
  # GET /tills/1.json
  def show
  end

  # GET /tills/new
  def new
    @till = Till.new
  end

  # GET /tills/1/edit
  def edit
  end

  # POST /tills
  # POST /tills.json
  def create
    @till = Till.new(till_params)

    respond_to do |format|
      if @till.save
        format.html { redirect_to @till, notice: 'Till was successfully created.' }
        format.json { render :show, status: :created, location: @till }
      else
        format.html { render :new }
        format.json { render json: @till.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tills/1
  # PATCH/PUT /tills/1.json
  def update
    respond_to do |format|
      if @till.update(till_params)
        format.html { redirect_to @till, notice: 'Till was successfully updated.' }
        format.json { render :show, status: :ok, location: @till }
      else
        format.html { render :edit }
        format.json { render json: @till.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tills/1
  # DELETE /tills/1.json
  def destroy
    @till.destroy
    respond_to do |format|
      format.html { redirect_to tills_url, notice: 'Till was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_till
      @till = Till.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def till_params
      params.require(:till).permit(:name, :last_z_transaction, :last_z_report_counter, :locked, :change_due, :change_data, :new_journal_on_startup, :allow_topup_purse_1, :allow_topup_purse_2, :allow_topup_purse_3, :allow_topup_purse_4, :allow_topup_purse_5, :purse_1_name, :purse_2_name, :purse_3_name, :purse_4_name, :purse_5_name, :auto_surcharge, :version, :compulsory_media_declaration)
    end
end
