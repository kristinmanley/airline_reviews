Rails.application.routes.draw do
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
