Rails.application.routes.draw do
  resources :admin
  resources :states
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'message', action: :service_inquiry, controller: 'messages';

end
