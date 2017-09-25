Rails.application.routes.draw do
  get 'posts/end_page' => 'posts#end_page', as: :end_page

  root 'posts#index'

  resources :posts

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
