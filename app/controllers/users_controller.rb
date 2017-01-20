class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      redirect_to '/sessions/new'
    else
      redirect_to 'users/new'
    end
  end

  def show
    @user = User.find(id)
  end

  def edit
    show
  end

  def update
    show.update_attributes(user_params)
    redirect_to user_path
  end

  def destroy
    show
    session[:user_id] = nil
    @user.destroy
    redirect_to 'sessions/new'
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def id
    params[:id]
  end

end
