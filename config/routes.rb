Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'homes/top'
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
