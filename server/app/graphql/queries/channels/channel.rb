# frozen_string_literal: true
module Queries
  module Channels
    class Channel < Queries::BaseQuery
      argument :id, ID, required: true
      
      type Types::ChannelType, null: false

      def resolve(id:)
        ::Channel.find(id)
      end
    end
  end
end