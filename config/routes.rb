Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})

  get("/square/new", {:controller =>"calculations", :action => "square_form"})

  get("/square/results", {:controller =>"calculations", :action => "square_results"})

end
