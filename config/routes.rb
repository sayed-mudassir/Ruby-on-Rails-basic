Rails.application.routes.draw do
  resources :recipes
  resources :projects do
    member do
      delete 'task_delete'
      delete 'bulk_task_delete'
    end
  end
  resources :laptops do
    collection do
      delete "bulk_delete"
    end
  end
 resources :students do 
    member do 
      delete 'destroy_subject'
      delete 'bulk_subject_delete' 
    end
    collection do
       delete "bulk_delete"
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
