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
  def edit
    @house = House.find params[:id]
  end

  #update
  def update
    @house = House.find params[:id]
    @house.update(house_params)

    redirect_to house_path(@house)
  end

  #destroy
  def destroy
    @house = House.find params[:id]
    @house.destroy

    redirect_to houses_path
  end

  #private
  private
  def house_params
    params.require(:house).permit(:name, :words, :sigil_url)
  end
end
