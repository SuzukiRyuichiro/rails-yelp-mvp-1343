Rails.application.routes.draw do
  resources :restaurants, only: %i[index show create new]
end
