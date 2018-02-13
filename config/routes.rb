Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  root 'assignments#index'
  post 'add_assignment_coordinator' => 'assignments#add_assignment_coordinator', as: 'add_assignment_coordinator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :assignments do
  	resources :comments
  end

end
