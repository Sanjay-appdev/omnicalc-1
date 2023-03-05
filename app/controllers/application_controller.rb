class ApplicationController < ActionController::Base
  def blank_square_form
    

    render({:template => "calculation_templates/square_form.html.erb"  })
    end

   def calculate_square
    

    @num = params.fetch("elephant").to_f
    
    @square_of_num = @num ** 2

   render({:template => "calculation_templates/square_results.html.erb"  })
    end 

    def calculate_random

      @lower = params.fetch("user_min").to_f
      @upper = params.fetch("user_max").to_f
      @result = rand(@lower..@upper)

      render({:template =>      "calculation_templates/rand_results.html.erb" })
    end

    
   
  def blank_payment_form 

    render({:template =>"calculation_templates/blank_payment_form.html.erb" })
  end



  def square_root
    render({:template =>"calculation_templates/squareroot_form.html.erb" })
  end

  def calculate_squareroot_results
     @ans = params.fetch("sqroot").to_f
  
     @square_of_num = Math.sqrt(@ans)

    render({:template =>"calculation_templates/square_root_results.html.erb" })
  end

end
def calculate_payment

  @jkl = params.fetch("apr_input").to_f
  @shel = params.fetch("numyr_input").to_i
  @fan = params.fetch("principal_input").to_f

  @shel_cal = @jkl /100 /12

  x = @shel_cal * @fan
  y = 1-( (1 + @shel_cal)) ** - (@shel * 12)
  @k = x / y

  render({:template =>"calculation_templates/hun_results.html.erb" })

end
