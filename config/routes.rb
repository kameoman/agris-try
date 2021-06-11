Rails.application.routes.draw do

  devise_for :views
  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  
}
  devise_for :users
  
  resources :users
  
  resources :admins ,only:[:index, :show]
  
  root 'home#top'

  resources :agris
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
