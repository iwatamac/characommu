class MessagesController < ApplicationController
  def index
    @message = Message.new
    @place = Place.find(params[:place_id])
  end

  def create
  end

end
