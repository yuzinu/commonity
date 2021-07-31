module Mutations
  module Servers
    class UpdateServer < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :owner_id, ID, required: false
      argument :name, String, required: false
      
      type Types::ServerType

      def resolve(id:, owner_id: nil, name: nil)
        server = Server.find(id)
        if server
          server.owner_id = owner_id unless owner_id.nil?
          server.name = name unless name.nil?
        end
        return server if server.save!
      end
    end
  end
end