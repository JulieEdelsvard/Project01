# == Route Map
#
#        Prefix Verb   URI Pattern                   Controller#Action
#          root GET    /                             pages#home
#         users POST   /users(.:format)              users#create
#      new_user GET    /users/new(.:format)          users#new
#         login GET    /login(.:format)              session#new
#               POST   /login(.:format)              session#create
#               DELETE /login(.:format)              session#destroy
#     calendars GET    /calendars(.:format)          calendars#index
#               POST   /calendars(.:format)          calendars#create
#  new_calendar GET    /calendars/new(.:format)      calendars#new
# edit_calendar GET    /calendars/:id/edit(.:format) calendars#edit
#      calendar GET    /calendars/:id(.:format)      calendars#show
#               PATCH  /calendars/:id(.:format)      calendars#update
#               PUT    /calendars/:id(.:format)      calendars#update
#               DELETE /calendars/:id(.:format)      calendars#destroy
#

Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create]

  get '/login' => 'session#new' # Sign in form
  post '/login' => 'session#create' # Sign in action
  delete '/login' => 'session#destroy' # Sign out

  get '/calendars/matches' => 'calendars#matches'
  resources :calendars

  get '/calendar' => 'calendar#show'

end
