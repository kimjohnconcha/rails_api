require 'api_constraints'

RailsApiPoc::Application.routes.draw do
  devise_for :users, :skip => [:registrations]

  # namespace :api, defaults: { format: :json } do
  #   scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
  #     resources :users, :only => [:show, :create]
  #   end
  # end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, :only => [:show, :create, :update, :destroy, :index]
    end
  end



end
