ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "mensajespoly@gmail.com",
  :password             => "123456poly",
  :authentication       => :plain,
  :enable_starttls_auto => true
}
