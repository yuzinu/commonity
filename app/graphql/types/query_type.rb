module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # /users
    field :users, resolver: Queries::Users
    field :user, resolver: Queries::User
    
    # /servers
    field :servers, resolver: Queries::Servers
    field :server, resolver: Queries::Server
  end
end
