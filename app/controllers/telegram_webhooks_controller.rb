class TelegramWebhooksController < Telegram::Bot::UpdatesController
    include ChatsHelper
    include MessagesHelper

    def message(message)
        chat = get_chat(message['chat']['id'])

        if chat == []
            chat = create_chat(message['chat']['id'], message['from']['first_name'], message['from']['last_name'], :incoming).save
        end
        
        message = create_new_message(chat.id, message['text'], :incoming)
    end
  end