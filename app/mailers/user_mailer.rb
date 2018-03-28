class UserMailer < ApplicationMailer
 default from: 'bookhubservice<13701917022@163.com>'
 
  def welcome_email(user,wishlist)
    @user = user
    @wish_list = wishlist
    mail(to: @user.email, subject: 'You have created a wishlist')
  end
end
