class PlacesController < ApplicationController
  def index
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

  private

  def place_params
    params.require(:place).permit(:name, character_ids: [])
  end

end
