class UsersController < ApplicationController
  # def index
  #   if params[:query].present? && params[:query] != ""
  #     sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"
  #     @users = User.where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @users = User.all
  #   end
  # end

  def index
    sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR company_name ILIKE :query"
    # mama = "company_type ILIKE :company_type"
    @users = User.all
    @users = User.where(sql_query, query: "%#{params[:query]}%") if params[:query].present? && params[:query] != ""
    # @users = User.where(mama, company_type: "%#{params[:company_type]}%") if params[:company_type].present? && params[:company_type] != ""

    @aaa = params[:company_type]

    @users = @users.select { |user| user.company_type == params[:company_type] } if params[:company_type].present? && params[:company_type] != ""

    @users = @users.select { |user| user.funding_stage == params[:funding_stage] } if params[:funding_stage].present? && params[:funding_stage] != ""

    @users = @users.select { |user| user.gender == params[:gender] } if params[:gender].present? && params[:gender] != ""

    @aaa = params[:gender]

  end

  # def index
  #   @users = @listings.where("name = ?", params[:name]) if params[:name].present? && params[:name] != ""
  #   @users = @listings.where("employment_type = ?", params[:employment_type]) if params[:employment_type].present? && params[:employment_type] != ""
  # end

  def show
    @user = User.find(params[:id])
  end

  def my_profile
    redirect_to root_path unless current_user
  end
end
