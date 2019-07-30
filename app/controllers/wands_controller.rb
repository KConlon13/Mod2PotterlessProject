class WandsController < ApplicationController
  before_action :authorized? 


  def index
    @wands = Wand.all
  end

  def show
    @wand = Wand.find(params[:id])
  end

  def new
    @users = User.all
    @spells = Spell.all
    @wand = Wand.new
    @wood = ['Acacia', 'Alder', 'Apple', 'Ash', 'Aspen', 'Beechwood', 'Blackthorn', 'Black Walnut', 'Cedar', 'Chestnut', 'Cypress', 'Dogwood', 'Ebony', 'Elder', 'Elm', 'Fir', 'Hawthorn', 'Hazel', 'Hornbeam', 'Mahogany', 'Maple', 'Oak', 'Poplar', 'Redwood', 'Rosewood', 'Willow', 'Yew']
    @length = ["9", "9.5", "10", "10.5", "11", "11.5", "12", "12.5", "13", "13.5",  "14", "14.5", "15"]
    @flexibility = ['Brittle','Bendy','Fairly Flexible','Inflexible', 'Nice and Flexible', 'Nice and Supple', 'Pliable', 'Quite Rigid', 'Quite Whippy', 'Rather Bendy', 'Reasonably Springy', '    Rigid', 'Slightly Bendy', 'Springy', 'Stiff', 'Swishy', 'Unyielding', 'Very Flexible', 'Whippy']
    @core = ['Basilisk Horn', 'Dragon Heartstring', 'Horned Serpent Horn', 'Jackalope Antler', 'Kelpie Hair', 'Kneazle Whiskers', 'Phoenix Feather', 'Rougarou Hair', 'Snallygaster Heartstring', 'Thestral Tail Hair', 'Thunderbird Tail Feather', 'Troll Whisker', 'Unicorn Hair', 'Veela Hair', 'Wampus Cat Hair', 'White River  Monster Spine']
  end

  def create
    @users = User.all
    @spells = Spell.all
    @wood = ['Acacia', 'Alder', 'Apple', 'Ash', 'Aspen', 'Beechwood', 'Blackthorn', 'Black Walnut', 'Cedar', 'Chestnut', 'Cypress', 'Dogwood', 'Ebony', 'Elder', 'Elm', 'Fir', 'Hawthorn', 'Hazel', 'Hornbeam', 'Mahogany', 'Maple', 'Oak', 'Poplar', 'Redwood', 'Rosewood', 'Willow', 'Yew']
    @length = ["9", "9.5", "10", "10.5", "11", "11.5", "12", "12.5", "13", "13.5",  "14", "14.5", "15"]
    @flexibility = ['Brittle','Bendy','Fairly Flexible','Inflexible', 'Nice and Flexible', 'Nice and Supple', 'Pliable', 'Quite Rigid', 'Quite Whippy', 'Rather Bendy', 'Reasonably Springy', '    Rigid', 'Slightly Bendy', 'Springy', 'Stiff', 'Swishy', 'Unyielding', 'Very Flexible', 'Whippy']
    @core = ['Basilisk Horn', 'Dragon Heartstring', 'Horned Serpent Horn', 'Jackalope Antler', 'Kelpie Hair', 'Kneazle Whiskers', 'Phoenix Feather', 'Rougarou Hair', 'Snallygaster Heartstring', 'Thestral Tail Hair', 'Thunderbird Tail Feather', 'Troll Whisker', 'Unicorn Hair', 'Veela Hair', 'Wampus Cat Hair', 'White River  Monster Spine']
    @wand = Wand.new(wand_params)
    if @wand.valid?
      @wand.save
      redirect_to wand_path(@wand)
    else
      flash.now[:message] = @wand.errors.full_messages[0]
      render :new
    end
  end

  def edit
    @users = User.all
    @spells = Spell.all
    @wood = ['Acacia', 'Alder', 'Apple', 'Ash', 'Aspen', 'Beechwood', 'Blackthorn', 'Black Walnut', 'Cedar', 'Chestnut', 'Cypress', 'Dogwood', 'Ebony', 'Elder', 'Elm', 'Fir', 'Hawthorn', 'Hazel', 'Hornbeam', 'Mahogany', 'Maple', 'Oak', 'Poplar', 'Redwood', 'Rosewood', 'Willow', 'Yew']
    @length = ["9", "9.5", "10", "10.5", "11", "11.5", "12", "12.5", "13", "13.5",  "14", "14.5", "15"]
    @flexibility = ['Brittle','Bendy','Fairly Flexible','Inflexible', 'Nice and Flexible', 'Nice and Supple', 'Pliable', 'Quite Rigid', 'Quite Whippy', 'Rather Bendy', 'Reasonably Springy', '    Rigid', 'Slightly Bendy', 'Springy', 'Stiff', 'Swishy', 'Unyielding', 'Very Flexible', 'Whippy']
    @core = ['Basilisk Horn', 'Dragon Heartstring', 'Horned Serpent Horn', 'Jackalope Antler', 'Kelpie Hair', 'Kneazle Whiskers', 'Phoenix Feather', 'Rougarou Hair', 'Snallygaster Heartstring', 'Thestral Tail Hair', 'Thunderbird Tail Feather', 'Troll Whisker', 'Unicorn Hair', 'Veela Hair', 'Wampus Cat Hair', 'White River  Monster Spine']
    @wand = Wand.find(params[:id])
  end

  def update
    @users = User.all
    @spells = Spell.all
    @wood = ['Acacia', 'Alder', 'Apple', 'Ash', 'Aspen', 'Beechwood', 'Blackthorn', 'Black Walnut', 'Cedar', 'Chestnut', 'Cypress', 'Dogwood', 'Ebony', 'Elder', 'Elm', 'Fir', 'Hawthorn', 'Hazel', 'Hornbeam', 'Mahogany', 'Maple', 'Oak', 'Poplar', 'Redwood', 'Rosewood', 'Willow', 'Yew']
    @length = ["9", "9.5", "10", "10.5", "11", "11.5", "12", "12.5", "13", "13.5",  "14", "14.5", "15"]
    @flexibility = ['Brittle','Bendy','Fairly Flexible','Inflexible', 'Nice and Flexible', 'Nice and Supple', 'Pliable', 'Quite Rigid', 'Quite Whippy', 'Rather Bendy', 'Reasonably Springy', '    Rigid', 'Slightly Bendy', 'Springy', 'Stiff', 'Swishy', 'Unyielding', 'Very Flexible', 'Whippy']
    @core = ['Basilisk Horn', 'Dragon Heartstring', 'Horned Serpent Horn', 'Jackalope Antler', 'Kelpie Hair', 'Kneazle Whiskers', 'Phoenix Feather', 'Rougarou Hair', 'Snallygaster Heartstring', 'Thestral Tail Hair', 'Thunderbird Tail Feather', 'Troll Whisker', 'Unicorn Hair', 'Veela Hair', 'Wampus Cat Hair', 'White River  Monster Spine']
    @wand = Wand.find(params[:id])
    @wand.update(wand_params)
    if @wand.valid?
      @wand.save
      redirect_to wand_path(@wand)
    else
      flash.now[:message] = @wand.errors.full_messages[0]
      render :edit
    end
  end

  private

  def wand_params
    params.require(:wand).permit(:wood, :length, :flexibility, :core, :user_id, :spell_id)
  end
end
