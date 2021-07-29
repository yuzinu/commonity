module Types
  class ChannelType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :server_id, ID, null: false
    
    field :server, Types::ServerType, null: false

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
