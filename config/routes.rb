Rails.application.routes.draw do 
  
  # mske routes for lgin/out less combersome
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  #devise_for :users
  
  resources :portfolios, except: [:show] 
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' 

  get 'about-me', to: 'pages#about' 
  get 'contact', to: 'pages#contact' 
 
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home' 
end 
