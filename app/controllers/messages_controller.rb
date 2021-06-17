class MessagesController < ApplicationController
  def index
    @message = Message.new
    @place = Place.find(params[:place_id])
    @characters = Character.includes(:user)

  end

  def create
    @place = Place.find(params[:place_id])
    @message = @place.messages.new(message_params)
    if @message.save
      redirect_to place_messages_path(@place)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(character_id: params[:character_id], place_id: params[:place_id] )
  end

end
