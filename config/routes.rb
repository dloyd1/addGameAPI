Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cards
      resources :cats
    end
  end
end
