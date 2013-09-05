Tcfplatform::Application.routes.draw do
  get "admin/index", :id => "admin"
  match "admin", to: "admin#index", via: :all
  resources :sections

  resources :tasks

  get "calendar/index", :id => "calendar"
  match "calendar", to: "calendar#index", via: :all

  resources :projects

  resources :weeks
  resources :inclasses
  resources :quizzes
  resources :readings
  resources :links

  resources :announcements

  resources :events

  resources :user_profiles

  authenticated :user do
    root :to => 'home#index', :as => :authenticated_root
  end
  root :to => redirect('/users/sign_in')
  devise_for :users, skip: :registrations
  devise_scope :user do
    resource :registration,
      only: [:new, :create, :edit, :update],
      path: 'users',
      path_names: { new: 'sign_up' },
      controller: 'devise/registrations',
      as: :user_registration do
        get :cancel
      end
  end
  resources :users

end