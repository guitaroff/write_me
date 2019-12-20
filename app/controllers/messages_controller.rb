class MessagesController < ApplicationController
  def create
    @message = Message.new message_params

    respond_to do |format|
      if @message.valid?
        @message.save
        MessageMailer.contact(@message).deliver_now
        format.js
      else
        format.js { render 'create_failure' }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone, :body)
  end
end
