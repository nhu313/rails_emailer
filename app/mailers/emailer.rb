class Emailer < ApplicationMailer

  def send_message(recipient, subject, message)
    mail(to: recipient, subject: subject) do |format|
      format.text { render text: message }
    end
  end
end
