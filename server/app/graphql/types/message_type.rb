# frozen_string_literal: true
module Types
  class MessageType < Types::BaseObject
    field :id, ID, null: false
    field :author_id, ID, null: false
    field :messageable_id, ID, null: false
    field :messageable_type, String, null: false
    field :body, String, null: false

    field :author, Types::UserType, null: false
    field :channel, Types::ChannelType, null: false

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
