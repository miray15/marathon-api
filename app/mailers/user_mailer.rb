class UserMailer < ApplicationMailer
  default from: 'mimikarabulut@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'https://mimismarathonjourney.netlify.app'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
