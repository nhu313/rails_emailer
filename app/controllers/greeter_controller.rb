class GreeterController < ApplicationController
  def hello
  end

  def sendmail
    Emailer.send_message(params[:email], params[:subject], params[:message]).deliver_now
    render :text => "Message sent."
  end
end
