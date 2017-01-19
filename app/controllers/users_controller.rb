class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:person])
    if @user.save
      redirect to root_url, :notice => "signed up!"
    else
      render :new
    end
  end
end
