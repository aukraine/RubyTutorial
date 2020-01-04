Rails.application.routes.draw do

  #get ':controller(/:action(/:id))(.:format)'
  #root :to => 'somecontroller#index"

  resources :items do
    get :upvote, on: :member
    get :expensive, on: :collection
  end

  get 'admin/users_count' => "admin#users_count"
  #resources :admin do
  #  #get :users_count, on: :collection
  #end

end
