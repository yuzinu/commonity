module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::Users::CreateUser
    field :update_user, mutation: Mutations::Users::UpdateUser
    field :delete_user, mutation: Mutations::Users::DeleteUser
  
    field :create_server, mutation: Mutations::Servers::CreateServer
    field :update_server, mutation: Mutations::Servers::UpdateServer
    field :delete_server, mutation: Mutations::Servers::DeleteServer
  end
end
