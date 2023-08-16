# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  resources :restaurants, only: %i[index show create new] do
    resources :reviews, only: %i[new create]
  end
end
