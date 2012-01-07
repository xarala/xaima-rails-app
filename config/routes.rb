Xaima::Application.routes.draw do


  resources :profiles, :only => [:index, :new, :create, :show]

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

end
