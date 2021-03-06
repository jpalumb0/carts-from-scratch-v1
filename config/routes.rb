Rails.application.routes.draw do
  
  root 'users#current_user_home'
  
  # Routes for the Cart resource:
  # CREATE
  get "/carts/new", :controller => "carts", :action => "new"
  post "/create_cart", :controller => "carts", :action => "create"

  # READ
  get "/carts", :controller => "carts", :action => "index"
  get "/carts/:id", :controller => "carts", :action => "show"

  # UPDATE
  get "/carts/:id/edit", :controller => "carts", :action => "edit"
  post "/update_cart/:id", :controller => "carts", :action => "update"

  # DELETE
  get "/delete_cart/:id", :controller => "carts", :action => "destroy"
  #------------------------------

  

  
  # Routes for the Follow resource:
  # CREATE
  get "/follows/new", :controller => "follows", :action => "new"
  post "/create_follow", :controller => "follows", :action => "create"

  # READ
  get "/follows", :controller => "follows", :action => "index"
  get "/follows/:id", :controller => "follows", :action => "show"

  # UPDATE
  get "/follows/:id/edit", :controller => "follows", :action => "edit"
  post "/update_follow/:id", :controller => "follows", :action => "update"

  # DELETE
  get "/delete_follow/:id", :controller => "follows", :action => "destroy"
  #------------------------------

  # Routes for the Vendor resource:
  # CREATE
  get "/vendors/new", :controller => "vendors", :action => "new"
  post "/create_vendor", :controller => "vendors", :action => "create"

  # READ
  get "/vendors", :controller => "vendors", :action => "index"
  get "/vendors/:id", :controller => "vendors", :action => "show"

  # UPDATE
  get "/vendors/:id/edit", :controller => "vendors", :action => "edit"
  post "/update_vendor/:id", :controller => "vendors", :action => "update"

  # DELETE
  get "/delete_vendor/:id", :controller => "vendors", :action => "destroy"
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get "/items/new", :controller => "items", :action => "new"
  post "/create_item", :controller => "items", :action => "create"

  # READ
  get "/items", :controller => "items", :action => "index"
  get "/items/:id", :controller => "items", :action => "show"

  # UPDATE
  get "/items/:id/edit", :controller => "items", :action => "edit"
  post "/update_item/:id", :controller => "items", :action => "update"

  # DELETE
  get "/delete_item/:id", :controller => "items", :action => "destroy"
  #------------------------------

  devise_for :users
  
  #mount WebGit::Engine, at: "/rails/git"
  
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
  
  resources :follows do
    get :autocomplete_user_email, :on => :collection
  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
