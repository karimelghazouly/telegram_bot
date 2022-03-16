class MessageDirection < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :direction, :integer
  end
end
