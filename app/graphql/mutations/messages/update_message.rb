module Mutations
  module Messages
    class UpdateMessage < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :body, String, required: false
      
      type Types::MessageType

      def resolve(id:, body: nil)
        message = Message.find(id)
        if message
          message.body = body unless body.nil?
        end
        return message if message.save!
      end
    end
  end
end