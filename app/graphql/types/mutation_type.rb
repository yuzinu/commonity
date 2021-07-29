module Types
  class MutationType < Types::BaseObject
    # users
    field :create_user, mutation: Mutations::Users::CreateUser
    field :update_user, mutation: Mutations::Users::UpdateUser
    field :delete_user, mutation: Mutations::Users::DeleteUser
  
    # servers
    field :create_server, mutation: Mutations::Servers::CreateServer
    field :update_server, mutation: Mutations::Servers::UpdateServer
    field :delete_server, mutation: Mutations::Servers::DeleteServer

    # channels
    field :create_channel, mutation: Mutations::Channels::CreateChannel
    field :update_channel, mutation: Mutations::Channels::UpdateChannel
    field :delete_channel, mutation: Mutations::Channels::DeleteChannel
  end
end
