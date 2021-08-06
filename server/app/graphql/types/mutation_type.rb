module Types
  class MutationType < Types::BaseObject
    # sessions
    field :register_user, mutation: Mutations::Sessions::RegisterUser
    field :sign_in, mutation: Mutations::Sessions::SignIn
    field :sign_out, mutation: Mutations::Sessions::SignOut

    # users
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

    # messages
    field :create_message, mutation: Mutations::Messages::CreateMessage
    field :update_message, mutation: Mutations::Messages::UpdateMessage
    field :delete_message, mutation: Mutations::Messages::DeleteMessage
  end
end
