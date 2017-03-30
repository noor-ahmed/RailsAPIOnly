class UserSessionsController < ApplicationController

  # login
  def create
    email = JSON.parse (params[:email])
    @user = set_user(email)
    if @user && !@user.active?
      @user.update_attribute( :active , true)
      json_response(@user, :ok)
    end
    json_response(@user, :not_ok)
  end

  def show
    @user = set_user(params[:email])
    if @user.active?
      as_json(@user)
    end
    json_response(@user, :not_ok)
  end

  # logout
  def destroy
    @user = set_user(params[:email])
    if @user.active?
      @user.update_attribute(:active, false )
    end
    json_response(@user, :sign_out)
  end

  private

  def set_user email
    @user = UserSession.find_by(:email => email)
  end
end
