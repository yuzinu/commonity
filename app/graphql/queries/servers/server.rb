module Queries
  module Servers
    class Server < Queries::BaseQuery
      argument :id, ID, required: true
      
      type Types::ServerType, null: false

      def resolve(id:)
        ::Server.find(id)
      end
    end
  end
end