class ChatroomsController < ApplicationController
  before_action :find_professional, only:[:new, :create]


  def new
    @chatroom = Chatroom.new
    @chatroom.student = current_user
    @chatroom.professional = @user
  end

  def create
    @chatroom = Chatroom.new
    @chatroom.student = current_user
    @chatroom.professional = @user
    if @chatroom.save
      redirect_to user_chatrooms_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def index
    @chatrooms = Chatroom.where(student: current_user).or(Chatroom.where(professional: current_user))
    if params[:active].present?
      @active_chatroom = @chatrooms.find(params[:active])
    else
      @active_chatroom = @chatrooms.first
    end
    @message = Message.new
    # @chatroom = Chatroom.find(params[:id])
    # @chatroom.student = current_user
    # @chatroom.professional = @user
        # if Chatroom.exists_between(current_user, @user)
    #   @chatroom = Catroom.between(current_user, @user)
    # else
    #   @chatroom = Chatroom.create(student: current_user, professional: @user)
    # end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @messages = @chatroom.messages.order(created_at: :asc)
    render 'index'
  end

  private

  def find_professional
    @user = User.find(params[:user_id])
  end
end
