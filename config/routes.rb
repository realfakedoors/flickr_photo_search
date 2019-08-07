Rails.application.routes.draw do
  root 'static_pages#index'
  
  get 'index' => "static_pages#index"
end
