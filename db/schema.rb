# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_15_125339) do
  create_table "chats", force: :cascade do |t|
    t.integer "telegram_chat_id"
    t.string "user_first_name"
    t.string "user_last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["telegram_chat_id"], name: "index_chats_on_telegram_chat_id", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.integer "chats_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "direction"
    t.index ["chats_id"], name: "index_messages_on_chats_id"
  end

end
