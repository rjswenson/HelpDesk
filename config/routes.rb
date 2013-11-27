Helpdesk::Application.routes.draw do
  resource :tickets
  resource :inbounds, only: :create
  root to: 'tickets#index'
end
