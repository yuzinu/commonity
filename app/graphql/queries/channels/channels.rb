module Queries
  module Channels
    class Channels < Queries::BaseQuery
      type [Types::ChannelType], null: false

      def resolve
        ::Channel.all
      end
    end
  end
end