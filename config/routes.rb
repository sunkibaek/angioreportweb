Rails.application.routes.draw do
  root 'pages#home'
  resource :mailing_list, only: [:show, :create]
end
