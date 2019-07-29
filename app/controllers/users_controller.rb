class UsersController < ApplicationController
  def index
    @users = User.all
    @patronus = Patronu.all
    @houses = House.all
  end

  def show
    @user = User.find(params[:id])
    @wands = Wand.all.select do |wand|
      wand.user_id == @user.id
    end
    @patronus = Patronu.all.select do |patronu|
      patronu.user_id == @user.id
    end
  end

  def new
    @user = User.new
    @houses = House.all
  end

  def create
    @houses = House.all
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      flash.now[:message] = @user.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @houses = House.all
    @user = User.find(params[:id])    
  end

  def update
    @houses = House.all
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      flash.now[:message] = @user.errors.full_messages[0]
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password_digest, :house_id)
  end
end
