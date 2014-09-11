Rails.application.routes.draw do
  get 'main/index'

  get 'venmo_callback', to: 'main#index'

  root 'welcome#index'
end
