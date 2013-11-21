Helpdesk::Application.routes.draw do
  resource :tickets

  root to: 'tickets#index'
end
