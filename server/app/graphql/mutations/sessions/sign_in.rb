# frozen_string_literal: true

module Mutations
  module Sessions
    class SignIn < Mutations::BaseMutation
      argument :email, String, required: true
      argument :password, String, required: true
      
      field :user, Types::UserType, null: false
      
      def resolve(args)
        user = User.find_for_database_authentication(login: args[:login])
        
        if user.present?
          if user.valid_password?(args[:password])
            context[:current_user] = user
            MutationResult.call(obj: { user: user }, success: true)
          else
            GraphQL::ExecutionError.new("Incorrect Login Credentials")
          end
        else
          GraphQL::ExecutionError.new("User not registered on this application")
        end
      end
    end
  end
end