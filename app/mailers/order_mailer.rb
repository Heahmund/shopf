
class OrderMailer < ApplicationMailer
  default from: 'Sam Ruby <shop@example.com>'


  def received
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def shipped(ord)
    @order = ord
    mail to: ord.email, subject: 'Pragmatic Store Order Shipped'
    end
  def received(ord)
    @order = ord
    mail to: ord.email, subject: 'Pragmatic Store Order Confirmation'
  end
end
