require 'api_constraints'

RailsApiPoc::Application.routes.draw do
  devise_for :users

  # namespace :api, defaults: { format: :json }, path: '/' do
  #   scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  #     resources :users, :only => [:show]
  #   end
  # end

  namespace :api do
    namespace :v1 do
      resources :users, :only => [:show]
    end
  end

end
