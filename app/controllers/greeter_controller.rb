class GreeterController < ApplicationController
  def hello
  end

  def sendmail
    render :text => "Message sent."
  end
end
