class SessionsController < ApplicationController

  def new

  end

  def create
    
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash.now[:message] = @user.errors.full_messages[0]
      render :new 
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
