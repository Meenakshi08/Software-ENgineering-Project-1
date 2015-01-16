Rails.application.routes.draw do
  get 'furniture_spares/view_database'
  get 'view_database' => 'furniture_spares#view_database', :as => 'view_database'
 # get 'furniture_spares/:id/destroy' => 'furniture_spares#destroy'
  resources :furniture_spares

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'furniture_spares#index'
  get 'furniture_spares/:id/destroy' => 'furniture_spares#destroy'
  #get 'furniture_spares/:id/update' => 'furniture_spares#update'
 #get 'furniture_spares/edit'
#get 'edit/:id' => 'furniture_spares#edit', :as => 'edit'
 # get 'furniture_spares/show'
 # get 'show/:id' => 'furniture_spares#show', :as => 'show'
  #get 'bouquets/view'
  #get 'view/:id' => 'bouquets#view', :as => 'view'

  #get 'delete/:id' => 'bouquets#delete', :as => 'delete'


 # get 'furniture_spares/:id', to: 'furniture_spares#show'
 # get 'furniture_spares/:id', to: 'furniture_spares#edit'
 # get 'bouquets/:id', to: 'bouquets#delete'
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
