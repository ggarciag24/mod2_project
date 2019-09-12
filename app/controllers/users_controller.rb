class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
      @user = User.new(user_params)

      if @user.valid?
        @user.save
        session[:username] = @user.username

      redirect_to teams_path
      else
      render :new
      end
  end


private


  def user_params
    params.require(:user).permit(:name, :username, :email, :password,
       :password_confirmation)

  end

end
