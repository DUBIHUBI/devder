class MeetingsController < ApplicationController
  before_action :find_professional, only: [:new, :create]

  def new
    @meeting = Meeting.new
    # if Chatroom.exists_between(current_user, @user)
    #   @chatroom = Catroom.between(current_user, @user)
    # else
    #   @chatroom = Chatroom.create(student: current_user, professional: @user)
    # end
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.student = current_user
    @meeting.professional = @user

    if @meeting.save
      redirect_to my_profile_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def accept
    @meeting = Meeting.find(params[:id])
    @meeting.update(accepted: true)
  end

  private

  def meeting_params
    params.require(:meeting).permit(:date, :time, :accepted)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
