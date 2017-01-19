class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to 'sessions/new'
      flash[:notice] = "You've successfully signed up!"
    else
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end