module Queries
  class Server < Queries::BaseQuery
    type Types::ServerType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      ::Server.find(id)
    end
  end
end