class CreateChats < ActiveRecord::Migration[7.0]
  def change
    create_table :chats do |t|
      t.integer :telegram_chat_id
      t.string :user_first_name
      t.string :user_last_name

      t.timestamps
    end
  end
end
