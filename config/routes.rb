Rails.application.routes.draw do

  root 'articulo_suplidors#index'

  resources :orden_compras
  resources :articulo_suplidors
  resources :articulos
  resources :movimiento_inventarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
