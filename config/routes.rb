Rails.application.routes.draw do
  resources :laptops do
    collection do
      delete "bulk_delete"
    end
  end
  resources :students do

    collection do 
      delete "bulk_delete"
      delete "bulk_subject_delete"
    end
    member do 
      get :toggel_status
      delete :destroy_subject
    end

  end

  resources :pages
  resources :shoes
  resources :animals
  resources :birds do 
    collection do
      delete "bulk_delete"
    end
    member do 
      get :toggel_status
    end
  end
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
