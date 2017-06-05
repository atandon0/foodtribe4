Rails.application.routes.draw do

  root "contents#index"


  #My likes
  # READ
  get "/my_likes", :controller => "my_likes", :action => "index"

  #My follows
  #READ
  get "/follows", :controller => "follows", :action => "index"

  #DELETE
  get "/delete_follow", :controller => "follows", :action => "destroy"

  # Routes for the Special_diet resource:
  # CREATE
  get "/special_diets/new", :controller => "special_diets", :action => "new"
  post "/create_special_diet", :controller => "special_diets", :action => "create"

  # READ
  get "/special_diets", :controller => "special_diets", :action => "index"
  get "/special_diets/:id", :controller => "special_diets", :action => "show"

  # UPDATE
  get "/special_diets/:id/edit", :controller => "special_diets", :action => "edit"
  post "/update_special_diet/:id", :controller => "special_diets", :action => "update"

  # DELETE
  get "/delete_special_diet/:id", :controller => "special_diets", :action => "destroy"
  #------------------------------

  # Routes for the Occassion resource:
  # CREATE
  get "/occassions/new", :controller => "occassions", :action => "new"
  post "/create_occassion", :controller => "occassions", :action => "create"

  # READ
  get "/occassions", :controller => "occassions", :action => "index"
  get "/occassions/:id", :controller => "occassions", :action => "show"

  # UPDATE
  get "/occassions/:id/edit", :controller => "occassions", :action => "edit"
  post "/update_occassion/:id", :controller => "occassions", :action => "update"

  # DELETE
  get "/delete_occassion/:id", :controller => "occassions", :action => "destroy"
  #------------------------------

  # Routes for the Cuisine resource:
  # CREATE
  get "/cuisines/new", :controller => "cuisines", :action => "new"
  post "/create_cuisine", :controller => "cuisines", :action => "create"

  # READ
  get "/cuisines", :controller => "cuisines", :action => "index"
  get "/cuisines/:id", :controller => "cuisines", :action => "show"

  # UPDATE
  get "/cuisines/:id/edit", :controller => "cuisines", :action => "edit"
  post "/update_cuisine/:id", :controller => "cuisines", :action => "update"

  # DELETE
  get "/delete_cuisine/:id", :controller => "cuisines", :action => "destroy"
  #------------------------------

  # Routes for the Friend_request resource:
  # CREATE
  get "/friend_requests/new", :controller => "friend_requests", :action => "new"
  post "/create_friend_request", :controller => "friend_requests", :action => "create"

  # READ
  get "/friend_requests", :controller => "friend_requests", :action => "index"
  get "/friend_requests/:id", :controller => "friend_requests", :action => "show"

  # UPDATE
  get "/friend_requests/:id/edit", :controller => "friend_requests", :action => "edit"
  post "/update_friend_request/:id", :controller => "friend_requests", :action => "update"

  # DELETE
  get "/delete_friend_request/:id", :controller => "friend_requests", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Content resource:
  # CREATE
  get "/contents/new", :controller => "contents", :action => "new"
  post "/create_content", :controller => "contents", :action => "create"

  # READ
  get "/contents", :controller => "contents", :action => "index"
  get "/contents/:id", :controller => "contents", :action => "show"

  # UPDATE
  get "/contents/:id/edit", :controller => "contents", :action => "edit"
  post "/update_content/:id", :controller => "contents", :action => "update"

  # DELETE
  get "/delete_content/:id", :controller => "contents", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
