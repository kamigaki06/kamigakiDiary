Rails.application.routes.draw do
  # get 'articles/index'

  # get 'articles/new'
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlsee http://guides.rubyonrails.org/routing.html
  get '/top' => 'home#top'

  get '/articles' => 'articles#index'
  
  root 'home#top' #<= ここを変更
end
