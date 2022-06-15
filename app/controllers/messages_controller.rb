class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save

      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message, user_is_reciever: true })
      )
      # if request.referer.include?('profiles')
        redirect_to chatrooms_path(active: @chatroom.id)

      # end
      # redirect_to chatrooms_path(active: @chatroom.id)
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
