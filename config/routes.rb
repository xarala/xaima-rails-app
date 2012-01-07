Xaima::Application.routes.draw do


  # => Profiles routing
  # index
  # new 
  # create  
  # show 
  resources :profiles, :only => [:index, :new, :create, :show]
  
  # => Sessions routing
  # new
  # create
  # delete
  resources :sessions#, :only => [:new, :create, :destroy]

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

end
