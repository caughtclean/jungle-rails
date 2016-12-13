class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def order_confirmation_email(order)
    @order = order
    subject = "Jungle order " + order.id.to_s
    mail(to: "eyerleyn@gmail.com, dhandrohit@gmail.com", subject: subject)
  end
end
