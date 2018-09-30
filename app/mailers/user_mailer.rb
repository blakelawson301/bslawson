class UserMailer < ApplicationMailer
    default from: "blakelawson05@gmail.com"

    def contact_form(email, name, message)
    @message = message
      mail(from: email,
           to: 'blakelawson05@gmail.com',
           subject: "A new contact form message from #{name}")
    end

    def welcome(user)
    @appname = "BSL"
      mail(to: user.email,
        subject: "Welcome to #{@appname}!")
    end
  end
