class UsersController < ApplicationController
  def create
    @user = UserSession.create!(user_params)
    json_response(@user, :created)
  end

  private

  def user_params
    params.permit(:user_name, :email, :password)
  end
end
