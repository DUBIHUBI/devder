class ReviewsController < ApplicationController
  before_action :find_professional, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.student = current_user
    @review.professional = @user
    if @review.save
      redirect_to my_profile_path
    else
      render 'users/my_profile', status: :unprocessable_entity
    end

    # respond_to do |format|
    #   format.html { redirect_to root_path }
    #   format.text { render partial: "shared/meetings", locals: {review: @review}, formats: [:html] }
    # end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_professional
    @user = User.find(params[:user_id])
  end
end
