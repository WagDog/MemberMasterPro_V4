class InfoTextsController < ApplicationController
  before_action :set_info_text, only: [:show, :edit, :update, :destroy]

  # GET /info_texts
  # GET /info_texts.json
  def index
    @info_texts = InfoText.all
  end

  # GET /info_texts/1
  # GET /info_texts/1.json
  def show
  end

  # GET /info_texts/new
  def new
    @info_text = InfoText.new
  end

  # GET /info_texts/1/edit
  def edit
  end

  # POST /info_texts
  # POST /info_texts.json
  def create
    @info_text = InfoText.new(info_text_params)

    respond_to do |format|
      if @info_text.save
        format.html { redirect_to @info_text, notice: 'Info text was successfully created.' }
        format.json { render :show, status: :created, location: @info_text }
      else
        format.html { render :new }
        format.json { render json: @info_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_texts/1
  # PATCH/PUT /info_texts/1.json
  def update
    respond_to do |format|
      if @info_text.update(info_text_params)
        format.html { redirect_to @info_text, notice: 'Info text was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_text }
      else
        format.html { render :edit }
        format.json { render json: @info_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_texts/1
  # DELETE /info_texts/1.json
  def destroy
    @info_text.destroy
    respond_to do |format|
      format.html { redirect_to info_texts_url, notice: 'Info text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_text
      @info_text = InfoText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_text_params
      params.require(:info_text).permit(:name, :till_id, :text, :bold, :underline, :double_width, :double_height, :quadruple, :center_aligned, :right_aligned)
    end
end
