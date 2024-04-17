class ApplicationController < ActionController::Base
  skip_forgery_protection
  def home
  end
  
  def squarenew
  end
  
  def paymentnew
  end
  
  def paymentresults
    @user_apr = params.fetch("user_apr").to_f # Convert APR from percentage to a decimal
    @user_years = params.fetch("user_years").to_f
    @user_pv = params.fetch("user_pv").to_f
    
    @monthly_interest_rate = @user_apr / 1200
    @total_payments = @user_years * 12
    unformatted_payment = (@monthly_interest_rate * @user_pv) / (1 - (1 + @monthly_interest_rate)**-@total_payments)
  
    @monthly_payment = unformatted_payment.to_fs(:currency)
  end
  
  def randomnew
  end
  
  def randomresults 
    @user_min = params.fetch("user_min").to_f
   @user_max = params.fetch("user_max").to_f
    @random_number = rand(@user_min..@user_max)
  end
  

  def squarerootnew
  end
  
  def squareresults
    @num = params.fetch("number").to_f
    @squared = @num*@num
  end
    
  
  def squarerootresults
    @num = params.fetch("number").to_f
    @squareroot = (@num)**0.5
  end
  
end
