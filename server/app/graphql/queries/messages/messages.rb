# frozen_string_literal: true
module Queries
  module Messages
    class Messages < Queries::BaseQuery
      type [Types::MessageType], null: false

      def resolve
        ::Message.all
      end
    end
  end
end