class SpellsController < ApplicationController
  before_action :authorized? 

  def index
    @spells = Spell.all
  end

  def show
    @spell = Spell.find(params[:id])
  end

  def new
    @spell = Spell.new
  end

  def create
    @spell = Spell.new(spell_params)
    if @spell.valid?
      @spell.save
      redirect_to "/users/#{session[:user_id]}"
    else
      flash.now[:message] = @spell.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @spell = Spell.find(params[:id])
  end

  def update
    @spell = Spell.find(params[:id])
    @spell.update
    if @spell.valid?
      @spell.save
      redirect_to "/spells/#{@spell.id}"
    else
      flash.now[:message] = @spell.errors.full_messages[0]
      render :edit
    end
  end

  private

  def spell_params
    params.require(:spell).permit(:name, :purpose)
  end
end
