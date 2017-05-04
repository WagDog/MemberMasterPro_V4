class UserMailer < ActionMailer::Base
  def welcome_email(user)
    @user = user
    @url  = 'https://rgc-20-20.herokuapp.com'
    mail(from: 'rgc-20-20@cardsandtoys.co.uk', to: @user.email, subject: 'Welcome to MemberMasterPro')
  end

  def password_reset_email(user, password)
    @user = user
    @password = password
    @url  = 'https://rgc-20-20.herokuapp.com'
    mail(from: 'rgc-20-20@cardsandtoys.co.uk', to: @user.email, subject: 'Password reset for the MemberMasterPro website')
  end
end