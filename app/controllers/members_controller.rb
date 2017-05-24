class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
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

    respond_to do |format|
      if @member.save
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
      @member_category = @member.member_category
      @address =  Address.find_by_member_id(@member)
      @address_types = AddressType.all
      @email_address = EmailAddress.find_by_member_id(@member)
      @telephone_number = TelephoneNumber.find_by_member_id(@member)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:code, :prefix, :title, :initials, :forename, :surname, :suffix, :member_category_id,
                                     :formal_salutation, :informal_salutation, :male, :master, :direct_debit, :birth_date,
                                     :join_date, :left_date, :is_active,
                                     addresses_attributes: [:id, :address_type_id, :address_1, :address_2, :address_3, :address_4, :post_code],
                                     telephone_numbers_attributes: [:id, :telephone_type_id, :number])
    end
end
