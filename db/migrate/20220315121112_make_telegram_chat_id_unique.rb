class MakeTelegramChatIdUnique < ActiveRecord::Migration[7.0]
  def change
    add_index :chats, :telegram_chat_id, unique: true
  end
end
