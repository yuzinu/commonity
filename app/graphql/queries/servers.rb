module Queries
  class Servers < Queries::BaseQuery
    type [Types::ServerType], null: false

    def resolve
      ::Server.all
    end
  end
end