class SessionsController < ApplicationController

  def new
    ##something should go here or we should changes the render below
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(password: params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "Invalid Username/Password Combination"
      render :new 
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
