Toy::Application.routes.draw do
  get "hello/world"
  #get "greeting.html" => "hello#world"

  root :to => "tasks#index"
  resources :tasks do
    put :finish, :restart, :on => :member
    get :done, :search, :on => :collection
  end
  
  resources :categories do
    resources :tasks do
      get :done, :on => :collection
    end
  end
end
