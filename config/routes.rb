 Rails.application.routes.draw do

  get("/square/new",{ :controller =>"application",:action =>"blank_square_form"}) 
  get("/square/results",{ :controller =>"application",:action=>"calculate_square" })



  get("/payment/new",{:controller=>"application",:action=>"blank_payment_form"})
  get("/payment/results",{:controller=>"application",:action=>"payment_results"})


  get("/random/new",{:controller=>"application",:action=>"blank_random_form"})
  get("/random/results",{ :controller =>"application" ,:action =>"calculate_random"  })

  get("/square_root/new",{:controller=>"application",:action=>"square_root"})
  get("/square_root/results",{:controller =>"application",:action =>"calculate_squareroot_results"})
  
end
