Rails.application.routes.draw do
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
  resources :events

  get 'welcome/say_hello' => 'welcome#say'

  get  'welcome' => 'welcome#index'

  root :to => 'welcome#index' #設定網站首頁

  #match ':controller(/:action(/:id(.:format)))', :via => :all
end
