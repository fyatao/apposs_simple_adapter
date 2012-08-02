Rails.application.routes.draw do
  root :to => "home#index"
  mount AppossSimpleAdapter::Engine => "/adapter", :as => 'adapter'
  match '/home/index' => 'home#index'
  match '/home/other' => 'home#other'
  match '/auth/:provider/callback' => 'home#callback'
end
