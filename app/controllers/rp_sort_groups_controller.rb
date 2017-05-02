class RpSortGroupsController < ApplicationController
  before_action :set_rp_sort_group, only: [:show, :edit, :update, :destroy]

  # GET /rp_sort_groups
  # GET /rp_sort_groups.json
  def index
    @rp_sort_groups = RpSortGroup.all
  end

  # GET /rp_sort_groups/1
  # GET /rp_sort_groups/1.json
  def show
  end

  # GET /rp_sort_groups/new
  def new
    @rp_sort_group = RpSortGroup.new
  end

  # GET /rp_sort_groups/1/edit
  def edit
  end

  # POST /rp_sort_groups
  # POST /rp_sort_groups.json
  def create
    @rp_sort_group = RpSortGroup.new(rp_sort_group_params)

    respond_to do |format|
      if @rp_sort_group.save
        format.html { redirect_to @rp_sort_group, notice: 'Rp sort group was successfully created.' }
        format.json { render :show, status: :created, location: @rp_sort_group }
      else
        format.html { render :new }
        format.json { render json: @rp_sort_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rp_sort_groups/1
  # PATCH/PUT /rp_sort_groups/1.json
  def update
    respond_to do |format|
      if @rp_sort_group.update(rp_sort_group_params)
        format.html { redirect_to @rp_sort_group, notice: 'Rp sort group was successfully updated.' }
        format.json { render :show, status: :ok, location: @rp_sort_group }
      else
        format.html { render :edit }
        format.json { render json: @rp_sort_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rp_sort_groups/1
  # DELETE /rp_sort_groups/1.json
  def destroy
    @rp_sort_group.destroy
    respond_to do |format|
      format.html { redirect_to rp_sort_groups_url, notice: 'Rp sort group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rp_sort_group
      @rp_sort_group = RpSortGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rp_sort_group_params
      params.require(:rp_sort_group).permit(:name, :sequence)
    end
end
