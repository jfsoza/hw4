Rails.application.routes.draw do
  get "/logout", :controller => "sessions", :action => "destroy"
  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"
end
