class PlacesController < ApplicationController
  before_action :authenticate_user!

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
    place = Place.find(params[:id])
    character = place.characters.where(user_id: current_user.id)
    place.characters.delete(character)
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:name, character_ids: [])
  end

end
