module Mutations
  module Channels
    class CreateChannel < Mutations::BaseMutation
      argument :server_id, ID, required: true
      argument :name, String, required: true
      
      type Types::ChannelType

      def resolve(server_id:, name:)
        Server.find(server_id).channels.create!(server_id: server_id, name: name)
      end
    end
  end
end