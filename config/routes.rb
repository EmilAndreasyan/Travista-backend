Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :countries do 
      resources :cities do
        end
    end    
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 'http://localhost:3000/api/v1/countries/1/cities'
end
