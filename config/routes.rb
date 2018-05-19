Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  get 'whats-vc', to: 'sessions#whats_vc'
  get 'service-content', to: 'sessions#service_content'
  get 'flow-to-join', to: 'sessions#flow_to_join'

  
end
