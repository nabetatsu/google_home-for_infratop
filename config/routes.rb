Rails.application.routes.draw do
  root 'says#new'
  post 'says' => 'says#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'events' => 'events#receive'
   namespace :api do
   	namespace :v1 do
    	post '/slack' => "slack#notice_slack"
    end
  end
end
