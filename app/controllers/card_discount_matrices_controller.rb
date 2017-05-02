class CardDiscountMatricesController < ApplicationController
  before_action :set_card_discount_matrix, only: [:show, :edit, :update, :destroy]

  # GET /card_discount_matrices
  # GET /card_discount_matrices.json
  def index
    @card_discount_matrices = CardDiscountMatrix.all
  end

  # GET /card_discount_matrices/1
  # GET /card_discount_matrices/1.json
  def show
  end

  # GET /card_discount_matrices/new
  def new
    @card_discount_matrix = CardDiscountMatrix.new
  end

  # GET /card_discount_matrices/1/edit
  def edit
  end

  # POST /card_discount_matrices
  # POST /card_discount_matrices.json
  def create
    @card_discount_matrix = CardDiscountMatrix.new(card_discount_matrix_params)

    respond_to do |format|
      if @card_discount_matrix.save
        format.html { redirect_to @card_discount_matrix, notice: 'Card discount matrix was successfully created.' }
        format.json { render :show, status: :created, location: @card_discount_matrix }
      else
        format.html { render :new }
        format.json { render json: @card_discount_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_discount_matrices/1
  # PATCH/PUT /card_discount_matrices/1.json
  def update
    respond_to do |format|
      if @card_discount_matrix.update(card_discount_matrix_params)
        format.html { redirect_to @card_discount_matrix, notice: 'Card discount matrix was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_discount_matrix }
      else
        format.html { render :edit }
        format.json { render json: @card_discount_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_discount_matrices/1
  # DELETE /card_discount_matrices/1.json
  def destroy
    @card_discount_matrix.destroy
    respond_to do |format|
      format.html { redirect_to card_discount_matrices_url, notice: 'Card discount matrix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_discount_matrix
      @card_discount_matrix = CardDiscountMatrix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_discount_matrix_params
      params.require(:card_discount_matrix).permit(:group_id, :plu_id, :card_profiles_id, :card_discounts_id)
    end
end
