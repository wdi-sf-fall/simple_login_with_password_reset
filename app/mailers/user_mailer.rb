class UserMailer < ActionMailer::Base
  default from: "mguehrs+info@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user, root_url)
    @user = user
    @url  = root_url + 'login'
    mail(to: user.username, subject: 'Sign Up Confirmation')
  end

  def forgot_password_email(user, root_url)
    @user = user
    @url  = root_url +'reset/'+ user.reset_token
    mail(to: @user.username, subject: 'Reset your password')
  end

end
