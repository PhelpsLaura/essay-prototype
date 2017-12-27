Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :essays do
    resources :research_pods
    resources :sections
    resources :sources
  end

  get '/essays/:essay_id/sections/clean_edit/:id', to: 'sections#edit_cleanest', as: 'edit_cleanest_essay_section'
  root "essays#index"
end
