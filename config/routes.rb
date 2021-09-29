Rails.application.routes.draw do
 
  resources :pedidos
  resources :pagamento_com_cartaos
  resources :pagamento_com_boletos
  resources :pagamentos
  resources :item_pedido_pks
  resources :item_pedidos
  resources :estados
  resources :enderecos
  resources :cidades
  resources :clientes
  resources :categoria
  resources :produtos
  namespace :users do
    
end
end
