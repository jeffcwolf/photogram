Rails.application.routes.draw do

  get("/",                      { :controller => "photos", :action => "index" })

  # Routes to CREATE photos [This must go BEFORE the show action]
  get("/photos/new",            { :controller => "photos", :action => "new_form" })
  get("/create_photo",          { :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/photos",                { :controller => "photos", :action => "index" })
  get("/photos/:id",            { :controller => "photos", :action => "show" })

  # Routes to DELETE photos
  get("/delete_photo/:id",      { :controller => "photos", :action => "destroy" })


end
