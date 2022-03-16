class MessagesController < ActionController::Base
    include MessagesHelper

    def send_message
        create_new_message(params[:id], params[:text], :outgoing)
        telegram_chat_id = Chat.find(params[:id]).telegram_chat_id
        telegram_client = Telegram::Bot::Client.new(Rails.application.config.telegram_token)
        
        telegram_client.send_message(chat_id: telegram_chat_id ,text: params[:text])
        redirect_to "/chats/" + params[:id]
    end
end
