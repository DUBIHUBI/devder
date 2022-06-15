class UsersController < ApplicationController
  def index
    sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"

    @users = User.select { |user| user.student == false }

    @users = User.where(sql_query, query: "%#{params[:query]}%") if params[:query].present? && params[:query] != ""

    @users = @users.select { |user| user.company_type == params[:company_type] } if params[:company_type].present? && params[:company_type] != ""

    @users = @users.select { |user| user.funding_stage == params[:funding_stage] } if params[:funding_stage].present? && params[:funding_stage] != ""

    @users = @users.select { |user| user.role == params[:role] } if params[:role].present? && params[:role] != ""

    @users = @users.select { |user| user.gender == params[:gender] } if params[:gender].present? && params[:gender] != ""

  end

  def show
    @user = User.find(params[:id])
    @markers = [{lat: @user.latitude, lng: @user.longitude}]

      @user = User.find(params[:id])

      if user_signed_in? && current_user.student?
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
          else
            @chatroom = Chatroom.create(professional: current_user, student: @user)
          end

        end
      end


  end




  def my_profile
    redirect_to root_path unless current_user
    @review = Review.new
  end

  # private

  #   def message_params
  #     params.require(:message).permit(:content)
  #   end
end
