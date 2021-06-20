class MessagesController < ApplicationController
  def index
    @message = Message.new
    @place = Place.find(params[:place_id])
    @characters = Character.includes(:user)
    @messages = @place.messages.includes(:user)
  end

  def create
    @place = Place.find(params[:place_id])
    @message = @place.messages.new(message_params)
    if @message.save
      redirect_to place_messages_path(@place)
    else
      @messages = @place.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
