class MessagesController < ApplicationController
  def create
    @message = Message.new message_params

    if @message.valid?
      @message.save
      MessageMailer.contact(@message).deliver_now
    end

    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone, :body)
  end
end
