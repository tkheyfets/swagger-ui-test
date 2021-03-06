Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :authors do
    resources :books
  end  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books
end
