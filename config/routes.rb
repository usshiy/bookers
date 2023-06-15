Rails.application.routes.draw do
  root to: 'books#new'
  get 'books/new', to: 'books#new', as: 'new_book'
  get 'books/index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'homes/top'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_list'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #ここから下はスタート画面表示のための記述
  get 'books/index' => 'books#index', as: 'index_book'
  
end
