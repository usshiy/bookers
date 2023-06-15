
Rails.application.routes.draw do
  root to: 'books#index'
  resources :books,as: 'books'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
end