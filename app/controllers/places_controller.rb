class PlacesController < ApplicationController
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
    place.destroy
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:name, character_ids: [])
  end

end
