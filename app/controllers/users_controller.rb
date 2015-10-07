class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new --- only the admin can make a new user
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    unless current_user == @username
      redirect_to :back, alert: "You are not authorized for that action."
    end
  end

  # POST /users
  def create
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html { redirect_to new_login_path, notice: 'User was successfully created.' }
        else
          format.html { render :new }
        end
      end
  end

  # PATCH/PUT /users/1
  def update
    if current_user == @user   #only the current_user can update herself
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
  end

  # DELETE /users/1
  def destroy
    if current_user == @user
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      end
    else
      redirect_to :back, alert: "You are not authorized for that action."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
