class StaticPagesController < ApplicationController
  def home
    @user = User.find(current_user.id) unless current_user.nil?
    redirect_to signin_path unless not current_user.nil?
  end

  def help
  end
end
