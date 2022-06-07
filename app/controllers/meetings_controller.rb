class MeetingsController < ApplicationController
  def show
    @meeting = Meeting.find(params[:id])
  end

  def create
  end
end
