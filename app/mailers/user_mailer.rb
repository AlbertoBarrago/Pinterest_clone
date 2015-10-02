class UserMailer < ApplicationMailer
  default from: 'pinterestclonex.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Pin Generated with success')
  end
end
