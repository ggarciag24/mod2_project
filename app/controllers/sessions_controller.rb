class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
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




end
