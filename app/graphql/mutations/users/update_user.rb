module Mutations
  module Users
    class UpdateUser < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :username, String, required: false
      argument :email, String, required: false
      
      field :user, Types::UserType, null: false
      field :errors, [String], null: false

      def resolve(id:, username: nil, email: nil)
        user = User.find(id)
        if user
          user.username = username unless username.nil?
          user.email = email unless email.nil?

          if user.save
            {
              user: user,
              errors: []
            }
          else
            {
              user: user,
              errors: user.errors.full_messages
            }
          end
        end
      end
    end
  end
end