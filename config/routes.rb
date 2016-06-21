Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'welcome/acerca'
  get 'welcome/contactenos'
  get 'welcome/conta'
  get 'welcome/diseno'
  get 'welcome/ejecutivo'
  get 'welcome/electro'
  get 'welcome/info'
  get 'welcome/produ'


  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  resources :posts do
  	resources :comments
  end
#  root 'posts#index'
	root 'welcome#index'
end
