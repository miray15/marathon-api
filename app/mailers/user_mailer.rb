class UserMailer < ApplicationMailer

  class UserMailer < ActionMailer::Base
    default :from => "notifications@example.com"
   
    def welcome_email(user)
      @user = user
      @url  = "https://mimismarathonjourney.netlify.app/subscribe"
      mail(:to => user.email, :subject => "TEST")
    end
  end

end
