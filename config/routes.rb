Rails.application.routes.draw do
  #get ':controller(/:action(/:id))(.:format)'
  #root :to => 'somecontroller#index"

  resources :items do
    get :upvote, on: :member
    get :expensive, on: :collection
  end
end
