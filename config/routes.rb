Rails.application.routes.draw do
  telegram_webhook TelegramWebhooksController

  get '/chats/:id', to: "chats#index"
  post '/chats/:id', to: "messages#send_message"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
