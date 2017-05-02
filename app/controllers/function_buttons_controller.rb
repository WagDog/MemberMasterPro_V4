class FunctionButtonsController < ApplicationController
  before_action :set_function_button, only: [:show, :edit, :update, :destroy]

  # GET /function_buttons
  # GET /function_buttons.json
  def index
    @function_buttons = FunctionButton.all
  end

  # GET /function_buttons/1
  # GET /function_buttons/1.json
  def show
  end

  # GET /function_buttons/new
  def new
    @function_button = FunctionButton.new
  end

  # GET /function_buttons/1/edit
  def edit
  end

  # POST /function_buttons
  # POST /function_buttons.json
  def create
    @function_button = FunctionButton.new(function_button_params)

    respond_to do |format|
      if @function_button.save
        format.html { redirect_to @function_button, notice: 'Function button was successfully created.' }
        format.json { render :show, status: :created, location: @function_button }
      else
        format.html { render :new }
        format.json { render json: @function_button.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /function_buttons/1
  # PATCH/PUT /function_buttons/1.json
  def update
    respond_to do |format|
      if @function_button.update(function_button_params)
        format.html { redirect_to @function_button, notice: 'Function button was successfully updated.' }
        format.json { render :show, status: :ok, location: @function_button }
      else
        format.html { render :edit }
        format.json { render json: @function_button.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /function_buttons/1
  # DELETE /function_buttons/1.json
  def destroy
    @function_button.destroy
    respond_to do |format|
      format.html { redirect_to function_buttons_url, notice: 'Function button was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_function_button
      @function_button = FunctionButton.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def function_button_params
      params.require(:function_button).permit(:name, :function, :code)
    end
end
