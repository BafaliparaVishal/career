Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: "admins/sessions"}
  root "home#index"

  devise_scope :admin do
    get '/admin', to: 'admins/sessions#new'
  end

    namespace :admins do
    resources :dashboards
  end
end
