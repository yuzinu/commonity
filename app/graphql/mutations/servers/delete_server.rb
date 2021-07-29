module Mutations
  module Servers
    class DeleteServer < Mutations::BaseMutation
      argument :id, ID, required: true
      
      type Types::ServerType

      def resolve(id:)
        Server.find(id).destroy
      end
    end
  end
end