# frozen_string_literal: true

module Mutations
  module Sessions
    class RegisterUser < Mutations::BaseMutation
      argument :username, String, required: true
      argument :email, String, required: true
      
      field :user, Types::UserType, null: false

      def resolve(args)
        User.create!(args)

        context[:current_user] = user

        MutationResult.call(
          obj: { user: user },
          success: user.persisted?,
          errors: user.errors
        )
      rescue ActiveRecord::RecordInvalid => invalid
        GraphQL::ExecutionError.new(
          "Invalid Attributes for #{invalid.record.class.name}: " \
          "#{invalid.record.errors.full_messages.join(', ')}"
        )
      end
    end
  end
end