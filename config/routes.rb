Rails.application.routes.draw do
  # ssl証明書発行用
  get '/.well-known/acme-challenge/:id' => 'static_pages#letsencrypt'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'comments/create'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'


  #resources :users, only: [:create]
  #get "signup" => "users#new", :as => "signup"
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get 'users/:id' => 'users#show', :as => 'user'
  get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  get 'users' => 'users#index', :as => 'users'
  delete 'users/:id',  to: 'users#destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  


  resources :issues
  #get 'issues/new' => 'issues#new'
  #get 'issues' => 'issues#index', :as => 'issues'
  #get 'issues/:id' => 'issues#show', :as => 'issue'
  #delete 'issues/:id' => 'issues#destroy'
  #post '/issues' => 'issues#create'
  #get 'issues/:id/edit' => 'issues#edit', :as => 'edit_issue'
  #patch 'issues/:id' => 'issues#update'

  # comments
  #post '/issues/:issue_id/comments' => "comments#create"
  resources :comments, only:[:create]

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'static_pages#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
