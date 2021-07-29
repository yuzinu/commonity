module Mutations
  module Messages
    class DeleteMessage < Mutations::BaseMutation
      argument :id, ID, required: true
      
      type Types::MessageType

      def resolve(id:)
        Message.find(id).destroy
      end
    end
  end
end