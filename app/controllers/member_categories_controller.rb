class MemberCategoriesController < ApplicationController
  before_action :set_member_category, only: [:show, :edit, :update, :destroy]

  # GET /member_categories
  # GET /member_categories.json
  def index
    @member_categories = MemberCategory.all
  end

  # GET /member_categories/1
  # GET /member_categories/1.json
  def show
  end

  # GET /member_categories/new
  def new
    @member_category = MemberCategory.new
  end

  # GET /member_categories/1/edit
  def edit
  end

  # POST /member_categories
  # POST /member_categories.json
  def create
    @member_category = MemberCategory.new(member_category_params)

    respond_to do |format|
      if @member_category.save
        format.html { redirect_to @member_category, notice: 'Member category was successfully created.' }
        format.json { render :show, status: :created, location: @member_category }
      else
        format.html { render :new }
        format.json { render json: @member_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_categories/1
  # PATCH/PUT /member_categories/1.json
  def update
    respond_to do |format|
      if @member_category.update(member_category_params)
        format.html { redirect_to @member_category, notice: 'Member category was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_category }
      else
        format.html { render :edit }
        format.json { render json: @member_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_categories/1
  # DELETE /member_categories/1.json
  def destroy
    @member_category.destroy
    respond_to do |format|
      format.html { redirect_to member_categories_url, notice: 'Member category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_category
      @member_category = MemberCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_category_params
      params.require(:member_category).permit(:name)
    end
end
