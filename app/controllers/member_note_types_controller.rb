class MemberNoteTypesController < ApplicationController
  before_action :set_member_note_type, only: [:show, :edit, :update, :destroy]

  # GET /member_note_types
  # GET /member_note_types.json
  def index
    @member_note_types = MemberNoteType.all
  end

  # GET /member_note_types/1
  # GET /member_note_types/1.json
  def show
  end

  # GET /member_note_types/new
  def new
    @member_note_type = MemberNoteType.new
  end

  # GET /member_note_types/1/edit
  def edit
  end

  # POST /member_note_types
  # POST /member_note_types.json
  def create
    @member_note_type = MemberNoteType.new(member_note_type_params)

    respond_to do |format|
      if @member_note_type.save
        format.html { redirect_to @member_note_type, notice: 'Member note type was successfully created.' }
        format.json { render :show, status: :created, location: @member_note_type }
      else
        format.html { render :new }
        format.json { render json: @member_note_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_note_types/1
  # PATCH/PUT /member_note_types/1.json
  def update
    respond_to do |format|
      if @member_note_type.update(member_note_type_params)
        format.html { redirect_to @member_note_type, notice: 'Member note type was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_note_type }
      else
        format.html { render :edit }
        format.json { render json: @member_note_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_note_types/1
  # DELETE /member_note_types/1.json
  def destroy
    @member_note_type.destroy
    respond_to do |format|
      format.html { redirect_to member_note_types_url, notice: 'Member note type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_note_type
      @member_note_type = MemberNoteType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_note_type_params
      params.require(:member_note_type).permit(:name)
    end
end
