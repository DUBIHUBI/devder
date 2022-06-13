class UsersController < ApplicationController
  def index
    sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"

    @users = User.all
    @users = User.where(sql_query, query: "%#{params[:query]}%") if params[:query].present? && params[:query] != ""

    @users = @users.select { |user| user.company_type == params[:company_type] } if params[:company_type].present? && params[:company_type] != ""

    @users = @users.select { |user| user.funding_stage == params[:funding_stage] } if params[:funding_stage].present? && params[:funding_stage] != ""

    @users = @users.select { |user| user.gender == params[:gender] } if params[:gender].present? && params[:gender] != ""

  end

  def show
    @user = User.find(params[:id])
    @markers = [{lat: @user.latitude, lng: @user.longitude}]
    @message = Message.new

    if current_user.chatrooms_as_student.exists?(professional: @user)
      if current_user.student?
        @chatroom = Chatroom.where(student: current_user, professional: @user).first
      else
        @chatroom = Chatroom.where(professional: current_user, student: @user).first
      end
    else
      if current_user.student?
        @chatroom = Chatroom.create(student: current_user, professional: @user)
        # @message = Message.new(message_params)
        # @message.chatroom = @chatroom
        # @message.user = current_user
        # raise
        # if @message.save
        # redirect_to user_chatrooms_path(params[:id])
        # else
        #  render "new", status: :unprocessable_entity
        # end
      else
        @chatroom = Chatroom.create(professional: current_user, student: @user)
        # @message = Message.new(message_params)
        # @message.chatroom = @chatroom
        # @message.user = current_user
        # if @message.save
      #  redirect_to user_chatrooms_path(params[:id])
        # else
        #   render "new", status: :unprocessable_entity
        # end
      end

    end
  end



  def my_profile
    redirect_to root_path unless current_user
  end

  # private

  #   def message_params
  #     params.require(:message).permit(:content)
  #   end
end
