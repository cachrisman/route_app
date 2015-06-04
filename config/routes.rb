RouteApp::Application.routes.draw do
    root to: 'planes#index'

    # just to be RESTful
    get '/planes', to: 'planes#index'

    # it's a `get` because
    #   someone is requesting
    #   a page with a form
    get '/planes/new', to: 'planes#new'

    post '/planes', to: 'planes#create'
end
