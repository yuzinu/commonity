# frozen_string_literal: true
module Types
  class ServerType < Types::BaseObject
    field :id, ID, null: false
    field :owner_id, ID, null: false
    field :name, String, null: false
    
    field :owner, Types::UserType, null: false
    field :channels, [Types::ChannelType], null: false

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
