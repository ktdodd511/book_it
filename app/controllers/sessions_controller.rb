class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_to root_url
      flash[:notice] = "Successfully logged in!"
    else
      render :new
      flash[:notice] = "Email or password was invalid."
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out"
  end

end
