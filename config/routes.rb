Rails.application.routes.draw do
  root 'landing_page#index', as: :home
  get 'subscribe', to: 'email_api#subscribe', as: :subscribe
  post 'subscribe', to: 'email_api#subscribing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
