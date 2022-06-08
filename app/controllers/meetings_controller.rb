class MeetingsController < ApplicationController
  before_action :find_professional, only: [:new, :create]

  # def show
  #   @meeting = Meeting.find(params[:id])
  # end

  def new
    @meeting = Meeting.new
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

  private

  def meeting_params
    params.require(:meeting).permit(:date, :time)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
