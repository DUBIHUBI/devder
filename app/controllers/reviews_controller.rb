class ReviewsController < ApplicationController
  before_action :find_professional, only: [:create]
  include ActionView::RecordIdentifier

  def create
    @review = Review.new(review_params)
    @review.student = current_user
    @review.professional = @user
    if @review.save
      redirect_to user_path(@user), notice: "Thanks for reviewing #{@user.first_name}!"
    else
      render 'users/my_profile', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
