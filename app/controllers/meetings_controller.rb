class MeetingsController < ApplicationController
  before_action :find_professional, only: [:new, :create]

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

  def accept
    @meeting = Meeting.find(params[:id])
    @meeting.update(accepted: true)

    # respond_to do |format|
    #   # format.html
    #   format.text { render partial: "shared/meeting_infos", locals: { meeting: @meeting }, formats: [:html] }
    # end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:date, :time, :accepted)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
