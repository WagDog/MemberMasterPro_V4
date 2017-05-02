class PopUpWindowsController < ApplicationController
  before_action :set_pop_up_window, only: [:show, :edit, :update, :destroy]

  # GET /pop_up_windows
  # GET /pop_up_windows.json
  def index
    @pop_up_windows = PopUpWindow.all
  end

  # GET /pop_up_windows/1
  # GET /pop_up_windows/1.json
  def show
  end

  # GET /pop_up_windows/new
  def new
    @pop_up_window = PopUpWindow.new
  end

  # GET /pop_up_windows/1/edit
  def edit
  end

  # POST /pop_up_windows
  # POST /pop_up_windows.json
  def create
    @pop_up_window = PopUpWindow.new(pop_up_window_params)

    respond_to do |format|
      if @pop_up_window.save
        format.html { redirect_to @pop_up_window, notice: 'Pop up window was successfully created.' }
        format.json { render :show, status: :created, location: @pop_up_window }
      else
        format.html { render :new }
        format.json { render json: @pop_up_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pop_up_windows/1
  # PATCH/PUT /pop_up_windows/1.json
  def update
    respond_to do |format|
      if @pop_up_window.update(pop_up_window_params)
        format.html { redirect_to @pop_up_window, notice: 'Pop up window was successfully updated.' }
        format.json { render :show, status: :ok, location: @pop_up_window }
      else
        format.html { render :edit }
        format.json { render json: @pop_up_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pop_up_windows/1
  # DELETE /pop_up_windows/1.json
  def destroy
    @pop_up_window.destroy
    respond_to do |format|
      format.html { redirect_to pop_up_windows_url, notice: 'Pop up window was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pop_up_window
      @pop_up_window = PopUpWindow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pop_up_window_params
      params.require(:pop_up_window).permit(:name, :plu_id_list, :show_price)
    end
end
