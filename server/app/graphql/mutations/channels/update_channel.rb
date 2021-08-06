# frozen_string_literal: true
module Mutations
  module Channels
    class UpdateChannel < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :server_id, ID, required: false
      argument :name, String, required: false
      
      type Types::ChannelType

      def resolve(id:, server_id: nil, name: nil)
        channel = Channel.find(id)
        if channel
          channel.server_id = server_id unless server_id.nil?
          channel.name = name unless name.nil?
        end
        return channel if channel.save!
      end
    end
  end
end