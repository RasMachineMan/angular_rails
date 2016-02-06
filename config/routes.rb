Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:index, :show, :create]
  end

  # Catch all route. Request render hmtl template then angular is taking over

  resources :templates, only: [] do
    collection do
      get ':template_name',              action: :templates
      get 'users/:template_name',        action: :users
    end
  end

  # Make user you put the default route at the bottom, otherwise you may get this
  # error that Angular is loading itself more than once which is fucked up!

  root 'home#index'
  get '*a' => 'home#index'


end
