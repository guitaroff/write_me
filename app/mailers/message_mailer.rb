class MessageMailer < ApplicationMailer
  default from: 'admin@write_me.com'

  def contact(message)
    @message = message
    mail(to: 'admin@write_me.com', subject: "Сообщение от: #{@message.name}(#{@message.email})")
  end
end
