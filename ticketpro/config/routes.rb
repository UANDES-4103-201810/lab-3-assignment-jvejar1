Rails.application.routes.draw do
  get '/lab', to: 'mycontroller#most_expensive_ticket_bought'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
