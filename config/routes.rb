Rails.application.routes.draw do

  get 'place/create'
  post 'place/create'
  get 'place/view/:id', to: 'place#view'
  get 'place/show', to: 'place#show'
  get 'place/delete/:id', to: 'place#delete'
  get 'place/update/:id', to: 'place#update'
  post 'place/update/:id', to: 'place#update'

  post 'welcome/hello', to: 'welcome#sayHello'

  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
