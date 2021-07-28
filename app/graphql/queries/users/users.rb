module Queries
  module Users
    class Users < Queries::BaseQuery
      type [Types::UserType], null: false

      def resolve
        puts ::User.superclass
        ::User.all
      end
    end
  end
end