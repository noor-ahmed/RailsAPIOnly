class UserSessionsController < ApplicationController
  require 'json'
  # login
  def create
    @user = set_user(params[:email])
    @password = params[:password]
    if (!@user.active? && @user.password == @password)
      byebug
      @user.update_attribute( :active , true)
      json_response(@user, :ok)
    else
      byebug
      json_response(nil, :not_ok)
    end
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
