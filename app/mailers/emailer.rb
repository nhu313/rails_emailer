class Emailer < ApplicationMailer

  def send_message(recipient, subject, message)
    mail(to: recipient, subject: subject) do |format|
      format.text { render text: message }
    end
  end

  def send_with_view(recipient, subject, message)
    @message = message
    mail(to: recipient, subject: subject)
  end
end
