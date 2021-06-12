class CharactersController < ApplicationController

  before_action :authenticate_user!, only: [:index, :new, :create]
  before_action :set_character, only: [:show, :edit, :update ]
  
  def index
    @characters = Character.includes(:user)
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

  def show
  end

  def edit
  end

  def update
  end

  private

  def character_params
    params.require(:character).permit(:name, :residence, :gender_id, :introductions, :image).merge(user_id: current_user.id)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end
