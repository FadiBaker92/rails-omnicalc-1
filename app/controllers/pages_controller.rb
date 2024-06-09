class PagesController < ApplicationController 

  def home
    render({:template => "pages_template/homepage"})
  end

  def square_form
    render({:template => "pages_template/square_form"}) 
  end

  def square_results
    render({:template => "pages_template/square_results"})
  end

  def sqaure_root_form
    render({:template => "pages_template/square_root_form"})
  end

  def square_root_results
    render({:template => "pages_template/square_root_results"})
  end

  def payment_form
    render({:template => "pages_template/payment_form"})
  end

  def payment_results
    user_apr = params.fetch("apr").to_f 
    present_value = params.fetch("principal").to_f
    num_years = params.fetch("num_of_years").to_i
    rate = user_apr / 100
    monthly_rate = rate / 12
    num_of_periods = num_years.to_f * 12
    @numerator = monthly_rate * present_value
    @denominator = 1 - ((1 + monthly_rate) ** -num_of_periods)
    render({:template => "pages_template/payment_results"})
  end




end
