Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'front_end#index'

  resources :clients
  resources :services
  resources :admin_dashboard
  resources :front_end

  controller :admin_dashboard do
    get 'dashboard' => :index
  end

  controller :clients do
    get 'clients' => :index
    get 'clients/new' => :new
    get 'clients/:id/edit' => :edit
    get 'clients/:id/deactivate' => :deactivate
    get 'clients/:id/activate' => :activate

    post 'clients' => :create
    patch 'clients' => :create
  end

  controller :services do
    get 'services' => :index
    get 'services/new' => :new
    get 'services/:id/edit' => :edit
    get 'services/:id/deactivate' => :deactivate
    get 'services/:id/activate' => :activate

    post 'services' => :create
    patch 'services' => :create
  end

  controller :front_end do
    get '/book' => :book
    post '/check_availability' => :check_availability
    patch '/check_availability' => :check_availability
  end

end
