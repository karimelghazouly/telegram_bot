class ChatsController < ActionController::Base
    layout "application"
    
    def index
        @all_chats = Chat.all
        @messages = Message.where(chats_id: params[:id]).all
    end
end
