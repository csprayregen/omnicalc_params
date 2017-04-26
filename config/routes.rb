Rails.application.routes.draw do
  get("/flexible/square/:number", {:controller => "calculations", :action => "flexible_square"})

  get("/flexible/square_root/:number", {:controller => "calculations", :action => "flexible_square_root"})

  get("/flexible/payment/:basis_points/:number_of_years/:present_value",
  {:controller => "calculations", :action => "monthly_payment"})

  get("/flexible/random/:min/:max", {:controller => "calculations", :action => "min_max"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})

  get("/square/results", {:controller => "calculations", :action => "square"})

  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})

  get("/square_root/results", {:controller => "calculations", :action => "square_root"})

  get("/payment/new", {:controller => "calculations", :action => "payment_form"})

  get("/payment/results", {:controller => "calculations", :action => "payment"})

  get("/random/new", {:controller => "calculations", :action => "random_form"})

  get("/random/results", {:controller => "calculations", :action => "random"})

end
