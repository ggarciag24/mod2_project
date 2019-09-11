class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session["user"] = @user.username
      redirect_to teams_path
    else
      @notice = "Cannot find username"
      render :new
    end
  end


  def destroy

  end

  def user_params
    params.require(:user).permit(:name, :username, :email,
       :password, :password_confirmation)
  end


end
