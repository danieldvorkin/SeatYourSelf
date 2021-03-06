class UsersController < ApplicationController
  def new
  	@users = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Signed Up"
    else
      render "new"
    end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
