Rails.application.routes.draw do

  resources :articles, only: %i[index show new create]
  #OR, resources :articles, only: [:index, :show, :new, :create, :edit, :update] works too, but lines 5 and 6 would need to be removed. 
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'
end


# get 'books/:id' to: 'books/show'
#Show is the Method (def show, remember?) and books is the controller. # means instance method!

#Named routes
#get 'contact', to: 'pages#show', as: 'contact'
#This provides you with contact_url and contact_path helpers that you can call in your application where needed.
#When the link gets clicked, the show action of the PagesController gets invoked. The path shown in the hyperlink is:

#/contact

