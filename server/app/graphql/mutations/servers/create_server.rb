module Mutations
  module Servers
    class CreateServer < Mutations::BaseMutation
      argument :owner_id, ID, required: true
      argument :name, String, required: true
      
      type Types::ServerType

      def resolve(owner_id:, name:)
        User.find(owner_id).servers.create!(owner_id: owner_id, name: name)
      end
    end
  end
end