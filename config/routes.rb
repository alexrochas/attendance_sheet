Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  get 'attendance/report'

  get 'attendance/sheet'
  post 'attendance/register'

  root 'attendance#report'

  match '/users',   to: 'users#index',   via: 'get'

  resources :students
  resources :presences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
