Rails.application.routes.draw do

  root :to =>'welcome#index'

  resources :fears
  resources :plans

  devise_scope :user do
    get '/logout',  :to => 'sessions#destroy'
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "registrations" }


  get "/users/addplan/:id" => "users#addPlan"

  resources :users

  resources :user_plans
  resources :user_jobs

  resources :user_plans

  get "/plans/new/:id" => "plans#new"

end
