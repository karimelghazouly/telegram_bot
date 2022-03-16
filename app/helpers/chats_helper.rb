module ChatsHelper
    def get_chat(telegram_chat_id)
        return Chat.where(:telegram_chat_id => telegram_chat_id).first
    end
    
    def create_chat(telegram_chat_id, user_first_name, user_last_name)
        return Chat.new(telegram_chat_id: telegram_chat_id,
            user_first_name: user_first_name,
            user_last_name: user_last_name).save
    end
end
