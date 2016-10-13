class CharactersController < ApplicationController

  # def index
  #   @characters = Character.all
  # end

  def show
    @house = House.find params[:house_id]
    @character = Character.find params[:id]
    @character.alive ? @res = alive_res : @res = dead_res
  end

  def new
    @house = House.find params[:house_id]
    @character = Character.new
  end

  def create
    @house = House.find params[:house_id]
    @character = @house.characters.create!(character_params)

    redirect_to house_path(@house)
  end

  def edit
    @house = House.find params[:house_id]
    @character = Character.find(params[:id])
  end

  def update
    @house = House.find params[:house_id]
    @character = Character.find params[:id]
    @character.update(character_params)

    redirect_to house_character_path(@house, @character)
  end

  def destroy
    @house = House.find params[:house_id]
    @character = Character.find params[:id]
    @character.destroy

    redirect_to house_path(@house)
  end

  # strong params
  private
  def character_params
    params.require(:character).permit(:first_name, :last_name, :alive)
  end

  def alive_res
    ["Yep.",
    "Yessir!",
    "You betchya!",
    "Oh baby, yes.",
    "Is the Pope Catholic?",
    "Yeah!",
    "Very much so.",
    "But of course.",
    "Fo sho!",
    "Alive as ever!",
    "Yuppers.",
    "Totes Magotes!",
    "The alivest."].sample
  end

  def dead_res
    ["Nah.",
    "Nope.",
    ":(",
    "Yeah... no.",
    "Nope!",
    "They dead.",
    "Not even a little bit.",
    "George R. R. Martin did his thing.",
    "Not anymore."].sample
  end
end
