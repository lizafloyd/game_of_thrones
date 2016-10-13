class HousesController < ApplicationController

  #index
  def index
    @houses = House.all
  end

  #show
  def show
    @house = House.find params[:id]
  end

  #new
  def new
    @house = House.new
  end

  #create
  def create
    @house = House.find params[:id]
    @house.create!(house_params)

    redirect_to house_path(@house)
  end

  #edit

  #update

  #destroy

  #private
  private
  def house_params
    params.require(:house).permit(:name, :words, :sigil_url)
  end
end
