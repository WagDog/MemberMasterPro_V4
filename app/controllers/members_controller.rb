class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /members
  # GET /members.json
  def index
    @members = Member.where("surname like 'zzzzz'")
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
    @address_types = AddressType.all
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @member.code = @member.initials.byteslice(0,1) + @member.surname.byteslice(0,3)
    @member.code.upcase!
    if not @member.card_holder.nil?
      @member.card_holder.title = @member.title
      @member.card_holder.initials = @member.initials
      @member.card_holder.forename = @member.forename
      @member.card_holder.surname = @member.surname
      @member.card_holder.category = @member.member_category.name
    end

    respond_to do |format|
      if @member.save
        # Add a member note of type system that a new record has been created
        @member.member_notes.create(member_note_type_id:1, title:'Member created', note:"Member created by user #{@user.name}")

        format.html { flash[:success] = 'Member was successfully created.'; redirect_to @member }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { flash[:success] = 'Member was successfully updated.'; redirect_to @member  }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { flash[:success] = 'Member was successfully destroyed.'; redirect_to members_url }
      format.json { head :no_content }
    end
  end

  def search
    @members = Member.where("UPPER(surname) LIKE UPPER('%#{params[:q]}%') OR UPPER(forename) LIKE UPPER('%#{params[:q]}%')")
    # render 'members/index'
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(current_user.id)
  end

    def set_member
      @member = Member.find(params[:id])
      @address_types = AddressType.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:code, :prefix, :title, :initials, :forename, :surname, :suffix, :member_category_id,
                                     :formal_salutation, :informal_salutation, :male, :master, :direct_debit, :birth_date,
                                     :join_date, :left_date, :is_active,
                                     addresses_attributes: [:id, :address_type_id, :address_1, :address_2, :address_3, :address_4, :post_code],
                                     telephone_numbers_attributes: [:id, :telephone_type_id, :number],
                                     email_addresses_attributes: [:id, :email, :is_default],
                                     card_holder_attributes: [:id, :card_number, :card_profile_id])
    end
end
