# frozen_string_literal: true
Rails.application.routes.draw do  
  devise_for :users, skip: :sessions
  
  if Rails.env.development?
    # authenticate :user do
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
    # end
  end

  mount ActionCable.server, at: '/cable'

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
