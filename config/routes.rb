Rails.application.routes.draw do
  resources :mailers
  resources :static_pages
  resources :sessions, only:[:new, :create, :destroy]
  resources :locations
  resources :sites
  resources :vats
  resources :transaction_items
  resources :transactions
  resources :tills
  resources :telephone_numbers
  resources :telephone_types
  resources :selection_windows
  resources :rp_sort_groups
  resources :pop_up_windows
  resources :modifiers
  resources :member_categories
  resources :media
  resources :macros
  resources :kp_prints
  resources :info_texts
  resources :function_buttons
  resources :addresses
  resources :email_addresses
  resources :members
  resources :cashiers
  resources :card_systems
  resources :card_revenues
  resources :card_holders
  resources :card_discount_matrices
  resources :card_profiles
  resources :plus
  resources :groups
  resources :card_discounts
  resources :users

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy' # Manual uses:- match 'signout', to: 'sessions#destroy' via: :delete (position 9558)
  get '/password_lost', to: 'users#password_lost'
  post 'password_reset', to: 'users#password_reset'
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
