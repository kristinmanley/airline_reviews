Rails.application.routes.draw do
  root :to => "routes#index"
  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Airline resource:
  # CREATE
  get "/airlines/new", :controller => "airlines", :action => "new"
  post "/create_airline", :controller => "airlines", :action => "create"

  # READ
  get "/airlines", :controller => "airlines", :action => "index"
  get "/airlines/:id", :controller => "airlines", :action => "show"

  # UPDATE
  get "/airlines/:id/edit", :controller => "airlines", :action => "edit"
  post "/update_airline/:id", :controller => "airlines", :action => "update"

  # DELETE
  get "/delete_airline/:id", :controller => "airlines", :action => "destroy"
  #------------------------------

  # Routes for the Flight resource:
  # CREATE
  get "/flights/new", :controller => "flights", :action => "new"
  post "/create_flight", :controller => "flights", :action => "create"

  # READ
  get "/flights", :controller => "flights", :action => "index"
  get "/flights/:id", :controller => "flights", :action => "show"

  # UPDATE
  get "/flights/:id/edit", :controller => "flights", :action => "edit"
  post "/update_flight/:id", :controller => "flights", :action => "update"

  # DELETE
  get "/delete_flight/:id", :controller => "flights", :action => "destroy"
  #------------------------------

  # Routes for the Route resource:
  # CREATE
  get "/routes/new", :controller => "routes", :action => "new"
  post "/create_route", :controller => "routes", :action => "create"

  # READ
  get "/routes", :controller => "routes", :action => "index"
  get "/routes/:id", :controller => "routes", :action => "show"

  # UPDATE
  get "/routes/:id/edit", :controller => "routes", :action => "edit"
  post "/update_route/:id", :controller => "routes", :action => "update"

  # DELETE
  get "/delete_route/:id", :controller => "routes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
