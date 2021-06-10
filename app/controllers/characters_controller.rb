class CharactersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :new, :create]
  
  def index
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to characters_path
    else
      render :new
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :residence, :gender_id, :introductions, :image).merge(user_id: current_user.id)
  end
end
