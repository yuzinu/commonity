# frozen_string_literal: true
module Mutations
  module Channels
    class DeleteChannel < Mutations::BaseMutation
      argument :id, ID, required: true
      
      type Types::ChannelType

      def resolve(id:)
        Channel.find(id).destroy
      end
    end
  end
end