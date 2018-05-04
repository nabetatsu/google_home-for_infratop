Rails.application.routes.draw do
  root 'says#new'
  post 'says' => 'says#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'events' => 'events#receive'
end
