Rails.application.routes.draw do
  root "home#index"
  get 'estimate', to: 'estimates#new', as: 'new_estimate'
  resources :estimates, only: [:create]
  get "/settings" => "settings#index"

  devise_for :admins
  as :admin do
    get "/login" => "devise/sessions#new"
    get "/signup" => "devise/registrations#new"
    get "/logout" => "devise/sessions#destroy"
  end

  resources :photos
  resources :testimonials
end
