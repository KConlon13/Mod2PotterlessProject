class HousesController < ApplicationController
  before_action :authorized? 

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @users = User.all.select do |user|
      user.house_id == @house.id
    end
  end
  
end
