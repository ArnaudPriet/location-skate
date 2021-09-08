class UsersController < ApplicationController

  def show
    @user = current_user
    #@rentings = @user.renting
  end

  def user_params
    params.require(:user).permit(:date)
  end

end
