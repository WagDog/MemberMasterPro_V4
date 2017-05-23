class StaticPagesController < ApplicationController
  before_action :check_signed_in, only: [:membership, :epos, :reports]


  def home
    @user = User.find(current_user.id) unless current_user.nil?
    redirect_to signin_path unless not current_user.nil?
  end

  def membership

  end

  def epos

  end

  def reports

  end

  def help
  end
end
