Rails.application.routes.draw do

  root 'orden_compras#index'
  resources :orden_compras
  resources :articulos
  resources :movimiento_inventarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
