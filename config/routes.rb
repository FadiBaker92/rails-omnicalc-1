Rails.application.routes.draw do
  get("/", {:controller => "pages",:action => "home"})

  get("/square/new", {:controller => "pages", :action  => "square_form"})
  get("/square/results", {:controller => "pages", :action => "square_results"})

  get("/square_root/new", {:controller => "pages", :action => "sqaure_root_form"})
  get("/square_root/results", {:controller => "pages", :action => "square_root_results"})

  get("/payment/new", {:controller => "pages", :action => "payment_form"})
  get("/payment/results", {:controller => "pages", :action => "payment_results"})
end
