class PlacesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_place, only: [:edit, :update, :destroy, :place_destroy]

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

  def destroy
    character = place.characters.where(user_id: current_user.id)
    place.characters.delete(character)
    redirect_to places_path
  end

  def edit
  end

  def update
    @character = Character.find_by(user_id: current_user.id)
    if @place.characters << @character
      redirect_to places_path
    else
      render :edit
    end
  end

  def place_destroy
    @place.destroy
    redirect_to places_path
  end

  #def join
    #@place = Place.find_by(id: params[:id])
    #@character = Character.find_by(user_id: current_user.id)
    #if !@place.characters.where(user_id: current_user.id)
      #@place.characters << @character
      #redirect_to 
    #end
  #end


  private

  def place_params
    params.require(:place).permit(:name, character_ids: [])
  end

  def set_place
    @place = Place.find(params[:id])
  end

end
