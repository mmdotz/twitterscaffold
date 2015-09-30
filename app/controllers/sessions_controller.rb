class SessionsController < ApplicationController
  skip_before_filter :authenticate_user

  def new #login
  end

  def create
    user = User.new
    if user.present?
    else
  end
end


  def destroy
    user = User.find(params[:id])
    user.delete
  end
end
