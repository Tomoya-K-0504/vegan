Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  get 'whats-vc', to: 'sessions#whats_vc'
  get 'service-content', to: 'sessions#service_content'
  get 'flow-to-join', to: 'sessions#flow_to_join'
  get 'greeting', to: 'sessions#greeting'
  post 'login', to: 'sessions#login'
  get 'logout', to: 'sessions#destroy'
  get 'member-home', to: 'sessions#member_home'

  # 利用規約に同意, ユーザー情報の記入、メンバープランの選択、登録内容の確認、で登録の流れ
  get 'become-member', to: 'sessions#agree_to_condition'
  get 'fill-member-info', to: 'users#new'
  post 'users', to: 'users#select_plan'
  post 'confirm-register', to: 'users#confirm_register'
  post 'fill-member-info', to: 'users#refill_member_info'
  post 'complete-register', to: 'users#create'

  resources :users
  
end
