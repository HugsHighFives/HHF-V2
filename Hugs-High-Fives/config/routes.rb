Hugshighfives::Application.routes.draw do

 #Authentication
get '/login', controller: 'sessions', action: 'new'
post '/sessions', controller: 'sessions', action: 'create'
get 'logout', controller:'sessions', action: 'destroy'

#Routes for the User resource:
#Create
get '/users/new', controller: 'users', action: 'new', as: 'new_user'
post '/users', controller: 'users', action: 'create'

# Read
get '/users', controller: 'users', action: 'index', as: 'users'
get '/users/:id', controller: 'users', action: 'show', as: 'user'


get "/home", controller: 'homes', action: 'index'
get "/products", controller: 'products', action: 'index'
get "/product_detail.html", controller: 'products', action: 'show'

end
