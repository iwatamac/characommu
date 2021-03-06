class CharactersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_character, only: [:show, :edit, :update, :destroy ]
  before_action :move_to_index, only: [:edit, :update, :destroy ]
  
  
  def index
    @characters = Character.includes(:user).where(user_id: current_user.id)
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

  def destroy
    @character.destroy
    redirect_to characters_path
  end 

  def update
    if @character.update(character_params)
      redirect_to character_path
    else
      render :edit
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :residence, :gender_id, :introductions, :image).merge(user_id: current_user.id)
  end

  def set_character
    @character = Character.find(params[:id])
  end

  def move_to_index
    redirect_to characters_path unless @character.user == current_user
  end
end
