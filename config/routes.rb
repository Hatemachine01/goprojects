Rails.application.routes.draw do
  root 'application#index'
  get  '/complete_profile' => 'profiles#personal_data' , as: 'complete_profile'
  put  '/edit'  => 'profiles#edit' 
  get  '/pending' => 'admins#pending'
  get  '/admins/approve/:id' => 'admins#approve', as: 'approve'
  get  'projects/board'  =>  'projects#projects_board', as: "board"
  get  'projects/show_modal/:id'  =>  'projects#show_modal', as: "modal"

  





  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :profiles, as: :users
  resources :projects


end