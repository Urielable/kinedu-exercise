Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :activities, only: [:index]
      resources :assistants, only: [:index]
      resources :babies, only: [:index] do
        resources :activity_logs, only:[:index,:create,:update]
      end
    end
  end

  namespace :admin do
    resources :activity_logs, only: [:index]
  end
  
end
