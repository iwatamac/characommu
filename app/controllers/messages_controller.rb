class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @message = Message.new
    @place = Place.find(params[:place_id])
    @places = Place.all
    @character = @place.characters.where(user_id: current_user.id)
    @characters = Character.includes(:user)
    @messages = @place.messages.includes(:user)
    #@messagess = {user_id: current_user.id, }
  end

  def create
    @place = Place.find(params[:place_id])
    @messages = @place.messages.includes(:user)
    @message = @place.messages.new(message_params)
    if @message.save
      render json: @message
    else
      @messages = @place.messages.includes(:user)
      @places = Place.all
      @character = @place.characters.where(user_id: current_user.id)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id,)
  end


end
