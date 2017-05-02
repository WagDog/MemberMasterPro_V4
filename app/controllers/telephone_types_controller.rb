class TelephoneTypesController < ApplicationController
  before_action :set_telephone_type, only: [:show, :edit, :update, :destroy]

  # GET /telephone_types
  # GET /telephone_types.json
  def index
    @telephone_types = TelephoneType.all
  end

  # GET /telephone_types/1
  # GET /telephone_types/1.json
  def show
  end

  # GET /telephone_types/new
  def new
    @telephone_type = TelephoneType.new
  end

  # GET /telephone_types/1/edit
  def edit
  end

  # POST /telephone_types
  # POST /telephone_types.json
  def create
    @telephone_type = TelephoneType.new(telephone_type_params)

    respond_to do |format|
      if @telephone_type.save
        format.html { redirect_to @telephone_type, notice: 'Telephone type was successfully created.' }
        format.json { render :show, status: :created, location: @telephone_type }
      else
        format.html { render :new }
        format.json { render json: @telephone_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telephone_types/1
  # PATCH/PUT /telephone_types/1.json
  def update
    respond_to do |format|
      if @telephone_type.update(telephone_type_params)
        format.html { redirect_to @telephone_type, notice: 'Telephone type was successfully updated.' }
        format.json { render :show, status: :ok, location: @telephone_type }
      else
        format.html { render :edit }
        format.json { render json: @telephone_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telephone_types/1
  # DELETE /telephone_types/1.json
  def destroy
    @telephone_type.destroy
    respond_to do |format|
      format.html { redirect_to telephone_types_url, notice: 'Telephone type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telephone_type
      @telephone_type = TelephoneType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telephone_type_params
      params.require(:telephone_type).permit(:name)
    end
end
