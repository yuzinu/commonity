module Mutations
  module Users
    class UpdateUser < Mutations::BaseMutation
      argument :id, ID, required: true
      argument :username, String, required: false
      argument :email, String, required: false
      
      type Types::UserType

      def resolve(id:, username: nil, email: nil)
        user = User.find(id)
        if user
          user.username = username unless username.nil?
          user.email = email unless email.nil?
        end
        return user if user.save
      end
    end
  end
end