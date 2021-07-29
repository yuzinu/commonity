module Mutations
  module Messages
    class CreateMessage < Mutations::BaseMutation
      argument :author_id, ID, required: true
      argument :messageable_id, ID, required: true
      argument :messageable_type, String, required: true
      argument :body, String, required: true
      
      type Types::MessageType

      def resolve(author_id:, messageable_id:, messageable_type:, body:)
        Channel.find(messageable_id).messages.create!(author_id: author_id, messageable_id: messageable_id, messageable_type: messageable_type, body: body)
      end
    end
  end
end