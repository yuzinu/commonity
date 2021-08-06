# frozen_string_literal: true
module Types
  class SubscriptionType < Types::BaseObject
    field :newMessage, Types::MessageType, null: false

    def new_message
    end

    field :updateMessage, Types::MessageType, null: false

    def update_message
    end

    field :deleteMessage, Types::MessageType, null: false

    def delete_message
    end
  end
end