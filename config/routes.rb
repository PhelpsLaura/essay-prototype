Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :essays do
    resources :research_pods
    resources :sections
    resources :sources
  end
  root "essays#index"
end
