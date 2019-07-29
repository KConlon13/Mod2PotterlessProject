class PatronusController < ApplicationController
  def index
    @patronus = Patronu.all
  end

  def show
    @patronu = Patronu.find(params[:id])
    @users = User.all.select do |user|
      user.id == @patronu.user_id
    end
  end

  def new
    @patronu = Patronu.new
    @users = User.all
  end

  def create
    @users = User.all
    @patronu = Patronu.new(patronu_params)
    if @patronu.valid?
      @patronu.save
      redirect_to "/patronus/#{@patronu.id}"
    else
      flash.now[:message] = @patronu.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @patronu = Patronu.find(params[:id])
  end

  def update
    @patronu = Patronu.find(params[:id])
    @patronu.update(patronu_params)
    if @patronu.valid?
      @patronu.save
      redirect_to patronu_path(@patronu)
    else
      flash.now[:message] = @patronu.errors.full_messages[0]
      render :edit
    end
  end

  private

  def patronu_params
    params.require(:patronu).permit(:animal, :meaning, :user_id)
  end
end
