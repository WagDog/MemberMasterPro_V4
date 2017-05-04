class TelephoneNumbersController < ApplicationController
  before_action :set_telephone_number, only: [:show, :edit, :update, :destroy]

  # GET /telephone_numbers
  # GET /telephone_numbers.json
  def index
    @telephone_numbers = TelephoneNumber.all
  end

  # GET /telephone_numbers/1
  # GET /telephone_numbers/1.json
  def show
  end

  # GET /telephone_numbers/new
  def new
    @telephone_number = TelephoneNumber.new
  end

  # GET /telephone_numbers/1/edit
  def edit
  end

  # POST /telephone_numbers
  # POST /telephone_numbers.json
  def create
    @telephone_number = TelephoneNumber.new(telephone_number_params)

    respond_to do |format|
      if @telephone_number.save
        format.html { redirect_to @telephone_number, notice: 'Telephone number was successfully created.' }
        format.json { render :show, status: :created, location: @telephone_number }
      else
        format.html { render :new }
        format.json { render json: @telephone_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telephone_numbers/1
  # PATCH/PUT /telephone_numbers/1.json
  def update
    respond_to do |format|
      if @telephone_number.update(telephone_number_params)
        format.html { redirect_to @telephone_number, notice: 'Telephone number was successfully updated.' }
        format.json { render :show, status: :ok, location: @telephone_number }
      else
        format.html { render :edit }
        format.json { render json: @telephone_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telephone_numbers/1
  # DELETE /telephone_numbers/1.json
  def destroy
    @telephone_number.destroy
    respond_to do |format|
      format.html { redirect_to telephone_numbers_url, notice: 'Telephone number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telephone_number
      @telephone_number = TelephoneNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telephone_number_params
      params.require(:telephone_number).permit(:telephone_type_id, :number)
    end
end
