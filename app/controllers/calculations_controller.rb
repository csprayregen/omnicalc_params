class CalculationsController < ApplicationController

  def flexible_square
    @user_num = params["number"].to_f
    #Parameters: {"number"=>"8"}
    render("calculations/flexible_square.html.erb")
  end

  def flexible_square_root
    @user_num = params["number"].to_f
    @user_num_squared = Math.sqrt (@user_num)
    @user_num_round = @user_num_squared
    # @square_root = @user_num ** (1/2)
    render("calculations/flexible_square_root.html.erb")
  end

  def monthly_payment
    @interest_rate = params["basis_points"].to_f/100
    r = @interest_rate/(12*100)
    @years = params["number_of_years"].to_i
    @pv = params["present_value"].to_f
    neg_years = @years*-1
    neg_periods = neg_years*12
    @payment = (r*@pv)/(1-(1+r)**neg_periods)
    render("calculations/monthly_payment.html.erb")
  end

  def min_max
    min = params["min"].to_f
    max = params["max"].to_f
    @new_number = max-min+1
    render("calculations/min_max.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_number = params[:user_number].to_f
    @square = @user_number**2
    render("calculations/square.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params[:user_number].to_f
    @square_root = Math.sqrt (@user_number)
    render("calculations/square_root.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @apr = params[:APR].to_f
    @years = params[:number_of_years].to_i
    @principal = params[:principal].to_f
    r = (@apr/100)/12
    neg_years = @years*-1
    neg_periods = neg_years*12
    @payment = (r*@principal)/(1-(1+r)**neg_periods)

    def random_form
      render("calculations/random_form.html.erb")
    end

    def random
      @min = params[:min].to_f
      @max = params[:max].to_f
      @new_number = @max-@min+1
      render("calculations/random.html.erb")
    end




    render("calculations/payment.html.erb")
  end

end
