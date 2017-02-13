Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/directors", {:controller => "directors", :action=>"directors_list"})
get("/directors/new", {:controller => "directors", :action => "new_director"})
get("/create_director", {:controller=> "directors", :action=> "create_row"})

get("/directors/:id/edit", { :controller =>"directors", :action => "edit_form"})
get("/update_director/:id", {:controller => "directors", :action => "update_row"})
get("/directors/:id", {:controller=> "directors", :action=>"details"})

get("/delete_director/:id", { :controller => "directors", :action => "delete"})


get("/actors", { :controller =>"actors", :action => "actors_list"})
get("/actors/new", { :controller =>"actors", :action => "new_actor"})
get("/create_actor", { :controller=> "actors", :action => "create_row"})

get("/actors/:id/edit", { :controller =>"actors", :action => "edit_form"})
get("/update_actor/:id", { :controller => "actors", :action => "update_row" })
get("/actors/:id", { :controller =>"actors", :action => "details"})

get("/delete_actor/:id", { :controller =>"actors", :action =>"delete"})


get("/movies", {:controller => "movies", :action => "movies_list"})
get("/movies/new", {:controller => "movies", :action => "new_movie"})
get("/create_movie", {:controller=> "movies", :action=> "create_row"})

get("/movies/:id/edit", { :controller =>"movies", :action => "edit_form"})
get("/update_movie/:id", {:controller => "movies", :action => "update_row"})
get("/movies/:id", {:controller => "movies", :action=>"details"})

get("/delete_movie/:id", { :controller => "movies", :action => "delete"})


get("/", {:controller=> "movies", :action=> "movies_list"})

end
