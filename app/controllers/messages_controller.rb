class MessagesController < ApplicationController
  def create
    message = Message.create(message_params)
    if message.valid?
      flash[:notice] = "Thanks for your message. I'll get back to you soon."
      Emailer.contact(message_params).deliver
    else
      flash[:alert] = "Please provide your name, email, and message and try again."
    end
    redirect_to "/contact"
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
