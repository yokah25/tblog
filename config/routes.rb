Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'trablogs#index'
  get 'trablogs'     => 'trablogs#index'
  get 'trablogs/new' => 'trablogs#new'
  delete  'trablogs/:id'  => 'trablogs#destroy'
  post  'trablogs'   => 'trablogs#create'
end
