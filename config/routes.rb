Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=begin
  get '/vendors/:id', to: 'vendor#show'
  post '/vendors', to: 'vendor#create'
  get '/vendors/new', to: 'vendor#new'
  get '/vendors/:id/edit', to: 'vendor#edit'
  put '/vendors/:id', to: 'vendor#update'
  delete '/vendors/:id', to: 'vendor#destroy'
=end
  namespace :admin do

    resources :vendors do 
      #get 'locations', on: :collection
      #get 'search', on: :collection
      collection do
        get 'locations'
        get 'search'
      end
      #get 'rating', on: :member
      member do
        get 'rating'
      end
    end

    resources :companies

  end
  
  
  resources :companies do
    resources :employees
  end

  #get '/vendors/locations', to: 'vendor#location'
  #resource :vendor
end
