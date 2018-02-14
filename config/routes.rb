Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  root 'assignments#index'
  post 'add_assignment_coordinator' => 'assignments#add_assignment_coordinator', as: 'add_assignment_coordinator'
  get '/assigned/:id' => 'assignments#assigned', as: 'assigned'

  resources :assignments do
  	resources :comments
  end

end
