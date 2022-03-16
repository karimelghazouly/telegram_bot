module MessagesHelper
    def create_new_message(chat_id, text, direction)
        return Message.new(chats_id: chat_id, text: text, direction: direction).save
    end

    def send_message(chat_id, text)
        return Telegram.bots[:chat_id].send_message(text)
    end
end