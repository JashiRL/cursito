Rails.application.routes.draw do
  resources :categories, except: :show
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   # delete "/products/:id", to: "products#destroy"
   # patch "/products/:id", to: "products#update"
   # # esta peticion de tipo patch para realizar cambios parciales a un recurso existente
   # post "/products", to: "products#create"
   # get "/products/new", to: "products#new", as: :new_product
   # get "/products", to: "products#index"
   # get "/products/:id", to: "products#show", as: :product
   # get "/products/:id/edit", to: "products#edit", as: :edit_product
   # CON LA RESOURCES nosotros podemos realizar todas las acciones dce CRUD
   # de una sola vez
   resources :products, path: "/"

  # show mostrar un unico producto en conccreto
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
