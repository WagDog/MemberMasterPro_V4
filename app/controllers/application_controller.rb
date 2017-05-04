class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  # Global function used by many controllers to limit access
  # when not signed in.
  def check_signed_in
    unless signed_in?
      flash[:danger] = 'Please sign in first to use that feature.'
      redirect_to root_path
    end
  end

end
