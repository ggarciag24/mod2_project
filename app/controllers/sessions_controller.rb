class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(user_params)
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
    params.require(:user).permit(:username, :password,
       :password_confirmation)
  end


end
