ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "crowdsmart.net",
  :user_name            => "markus@crowdsmart.net",
  :password             => Rails.application.secrets.my_smtp_password,
  :authentication       => "plain",
  :enable_starttls_auto => true
}