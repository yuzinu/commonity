# frozen_string_literal: true
module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # users
    field :users, resolver: Queries::Users::Users
    field :user, resolver: Queries::Users::User
    
    # servers
    field :servers, resolver: Queries::Servers::Servers
    field :server, resolver: Queries::Servers::Server

    # channels
    field :channels, resolver: Queries::Channels::Channels
    field :channel, resolver: Queries::Channels::Channel

    # messages
    field :messages, resolver: Queries::Messages::Messages
    field :message, resolver: Queries::Messages::Message
  end
end
