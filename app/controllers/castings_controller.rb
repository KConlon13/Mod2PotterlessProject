class CastingsController < ApplicationController
  def index
    @castings =  Casting.all
  end

  def new
    @spells = Spell.all
    @casting = Casting.new
  end

  def edit
    @casting = Casting.find(params[:id])
  end

  def show
    @casting = Casting.find(params[:id])
  end

  def update
    @casting = Casting.find(params[:id])
    @casting.update(casting_params)
    if @casting.valid?
      @casting.save
      redirect_to "/users/#{session[:user_id]}"
    else
      flash.now[:message] = @casting.errors.full_messages[0]
      render :edit
    end
  end

  def create
    @spells = Spell.all
    @casting = Casting.new(casting_params)
    if @casting.valid?
      @casting.save
      redirect_to "/users/#{session[:user_id]}"
    else
      flash.now[:message] = @casting.errors.full_messages[0]
      render :new
    end
  end 

  def destroy
    @casting = Casting.find(params[:id])
    @casting.destroy
    redirect_to castings_path
  end

  private
  def casting_params
    params.require(:casting).permit(:user_id, :spell_id)
  end

end
