module Mutations
  module Users
    class CreateUser < Mutations::BaseMutation
      argument :username, String, required: true
      argument :email, String, required: true
      
      type Types::UserType

      def resolve(username:, email:)
        User.create!(username: username, email: email)
      end
    end
  end
end