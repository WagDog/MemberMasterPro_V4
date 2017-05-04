class UsersController < ApplicationController
  before_action :signed_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]
  before_action :set_user, only: [:show]
  before_action :check_signed_in, only: [:index, :show, :new, :create, :edit, :update]

  # GET /users
  def index
    # send to the user profile page instead as we must be signed in to get here.
    if current_user.isAdministrator?
      # @users = User.all # .all has been deprecated
      @users = User.order(id: :asc)
    else
      @user = User.find(current_user.id)
      redirect_to @user unless @user.isAdministrator?
    end
  end

  # GET /users/1
  def show
    # set_user #Not required as called in the before_action above
   end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the MemberMasterPro!'
      UserMailer.welcome_email(@user).deliver_now!
      redirect_to @user
    else
      render 'new'
    end
  end

  # GET /users/:id/edit
  def edit
    @user = User.find(params[:id])
  end

  # PUT /users/:id
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated!"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  # GET /users/password_lost
  def password_lost
    @user = User.first
  end

  # POST /users/password_reset
  def password_reset
    @user = User.find_by_email(params[:email].downcase)
    if @user.nil?
      render 'password_lost'
    else
      # Use the random_password_generator gem to generate a password of 6 characters
      @password = RandomPasswordGenerator.generate(6, :skip_url_unsafe => true)
      @user.update_attributes(password: @password, password_confirmation: @password)
      UserMailer.password_reset_email(@user, @password).deliver_now!
      flash[:success] = "Password reset! An email with your new temporary password has been sent to you. You can change this temporary password after you have logged in."
      redirect_to signin_path
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(current_user.id)
    #@user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  # This 'permit' code replaces the deprecated attr_accessible in the model
  def user_params
    params.require(:user).permit(:id, :name, :isAdministrator, :email, :password, :password_confirmation)
  end

  def signed_in_user
    redirect_to signin_path, notice: 'Sign in.' unless signed_in?
  end

  def correct_user
    if !current_user.isAdministrator?
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
  end
end
