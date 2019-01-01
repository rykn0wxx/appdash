Rails.application.routes.draw do
  resources :fact_phones
  resources :languages
  resources :clients
  post 'user_token' => 'user_token#create'
  resources :users, :defaults => { :format => 'json' }, :constraints => { :id => /.*/ }
end
