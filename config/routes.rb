Device::Application.routes.draw do
  resources :codings
  root :to => 'home#index'
end
