Rails.application.routes.draw do
  
  get("/",        { :controller => "homepage", :action => "homepage" })
  
  
  
  get("/flexible/square/:a_number_flex", { :controller => "calculations", :action => "flex_square" })
  
  get("/flexible/square_root/:square_root_number_flex", { :controller => "calculations", :action => "flex_square_root" })
  
  get("/flexible/payment/:interest_rate_flex/:years_flex/:principal_flex/", { :controller => "calculations", :action => "flex_payment" })
  
  get("/flexible/random/:random_number_flex", { :controller => "calculations", :action => "flex_random_number" })
  
  
  
  get("/square/:a_number", { :controller => "calculations", :action => "square_form" })
  
  get("/square_root/:square_root_number", { :controller => "calculations", :action => "square_root_form" })
  
  get("/payment/:interest_rate/:years/:principal", { :controller => "calculations", :action => "payment_form"})
  
  get("/random/:random_number", {:controller => "calculations", :action => "random_number_form"})
  
  get("/word_count/", {:controller => "calculations", :action => "word_count_form"})
  
  get("/descriptive_stats", {:controller => "calculations", :action => "stats_form"})
  
  
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
