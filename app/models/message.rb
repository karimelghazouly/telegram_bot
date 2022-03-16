class Message < ApplicationRecord
    enum direction: [:incoming, :outgoing]
end
