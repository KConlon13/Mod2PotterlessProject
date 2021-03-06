class UsersController < ApplicationController
  before_action :authorized?, except: [:new, :create]

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
    @castings = Casting.all.select do |casting|
        casting.user_id == @user.id
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
    session[:user_id] = @user.id
    if @user.valid?
      @user.save
      redirect_to "/login"
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
    session[:user_id] = nil
    @user.destroy
    redirect_to "/login"
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :house_id)
  end
end
