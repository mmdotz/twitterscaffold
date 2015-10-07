class SessionsController < ApplicationController
  skip_before_filter :authenticate_user

  def new #login - where we collect the info
  end

  def create #where we create something with the info
    user = User.find_by_username(params[:username])
    if user.present? && user.authenticate(params[:password])
      #below is a cookie for the User object
      set_user_session(user)
      redirect_to tweets_path, notice: 'Successfully logged in.'
    else
      #when login is wrong
      flash[:alert] = "Username or Email did not match."
      render :new
    end
  end

  def destroy
    session[:logged_in_user_id] = nil
    redirect_to root_path, notice: 'Successfully logged out.'
  end

  private

  def set_user_session(user)
    session[:logged_in_user_id] = user.id
  end
end
