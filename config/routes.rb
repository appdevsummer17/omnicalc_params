Rails.application.routes.draw do
  
  # get("/flexible/square/1", { :controller => "calculations", :action => "flex_square"})
  
  # Part I
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square"})
  get("/flexible/square_root/:a_number", { :controller => "calculations", :action => "flex_square_root"})
  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "calculations", :action => "flex_payment"})
  get("/flexible/random/:min/:max", { :controller => "calculations", :action => "flex_random"})

  # Part II
  ## Square form
  get("/square/new", { :controller => "calculations", :action => "square_form"})
  get("/square/results", { :controller => "calculations", :action => "process_square"})

  ## Sq root form  
  get("/square_root/new", { :controller => "calculations", :action => "square_root_form"})
  get("/square_root/results", { :controller => "calculations", :action => "process_square_root"})
  
  ## Payment form
  get("/payment/new", { :controller => "calculations", :action => "payment_form"})
  get("/payment/results", { :controller => "calculations", :action => "process_payment"})

  ## Random number form
  get("/random/new", { :controller => "calculations", :action => "random_form"})
  get("/random/results", { :controller => "calculations", :action => "process_random_number"})
  
  # Part III
  ## Word count form
  get("/word_count/new", { :controller => "calculations", :action => "word_count_form"})
  get("/word_count/results", { :controller => "calculations", :action => "process_word_count"})
  
  ## Word count form
  get("/stats_calculation/new", { :controller => "calculations", :action => "stats_calculation_form"})
  get("/stats_calculation/results", { :controller => "calculations", :action => "process_stats_calculation"})

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
