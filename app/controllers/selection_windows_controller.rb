class SelectionWindowsController < ApplicationController
  before_action :set_selection_window, only: [:show, :edit, :update, :destroy]

  # GET /selection_windows
  # GET /selection_windows.json
  def index
    @selection_windows = SelectionWindow.all
  end

  # GET /selection_windows/1
  # GET /selection_windows/1.json
  def show
  end

  # GET /selection_windows/new
  def new
    @selection_window = SelectionWindow.new
  end

  # GET /selection_windows/1/edit
  def edit
  end

  # POST /selection_windows
  # POST /selection_windows.json
  def create
    @selection_window = SelectionWindow.new(selection_window_params)

    respond_to do |format|
      if @selection_window.save
        format.html { redirect_to @selection_window, notice: 'Selection window was successfully created.' }
        format.json { render :show, status: :created, location: @selection_window }
      else
        format.html { render :new }
        format.json { render json: @selection_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selection_windows/1
  # PATCH/PUT /selection_windows/1.json
  def update
    respond_to do |format|
      if @selection_window.update(selection_window_params)
        format.html { redirect_to @selection_window, notice: 'Selection window was successfully updated.' }
        format.json { render :show, status: :ok, location: @selection_window }
      else
        format.html { render :edit }
        format.json { render json: @selection_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selection_windows/1
  # DELETE /selection_windows/1.json
  def destroy
    @selection_window.destroy
    respond_to do |format|
      format.html { redirect_to selection_windows_url, notice: 'Selection window was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection_window
      @selection_window = SelectionWindow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selection_window_params
      params.require(:selection_window).permit(:name, :plu_id)
    end
end
