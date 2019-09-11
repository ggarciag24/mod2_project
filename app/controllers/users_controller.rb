class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to new_team_path
  end


private


  def user_params
    params.require(:user).permit(:name, :username, :email, :password,
       :password_confirmation)

  end

end
