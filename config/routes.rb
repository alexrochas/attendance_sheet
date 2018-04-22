Rails.application.routes.draw do
  get 'attendance/sheet'
  post 'attendance/register'

  resources :students
  resources :presences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
