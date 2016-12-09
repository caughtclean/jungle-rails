class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation_email(order)
    # @user = user
    mail(to: "eyerleyn@gmail.com, dhandrohit@gmail.com", subject: 'Jungle Order Confirmation')
  end
end
