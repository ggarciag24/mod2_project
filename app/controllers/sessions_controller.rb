class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:username] = @user.username
      redirect_to teams_path
    else
      @notice = "Cannot find username"
      render :new
    end
  end


  def destroy
    session.delete(:username)

    redirect_to login_path
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end


end
