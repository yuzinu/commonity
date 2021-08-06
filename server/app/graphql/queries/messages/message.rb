# frozen_string_literal: true
module Queries
  module Messages
    class Message < Queries::BaseQuery
      argument :id, ID, required: true
      
      type Types::MessageType, null: false

      def resolve(id:)
        ::Message.find(id)
      end
    end
  end
end