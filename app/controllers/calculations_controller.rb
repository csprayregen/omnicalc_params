class CalculationsController < ApplicationController

  def square_results
    @user_num = params[:user_num].to_f
    render("calculations/square_results.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def flexible_square
    @user_num = params["number"].to_f
    #Parameters: {"number"=>"8"}
    render("calculations/flexible_square.html.erb")
  end

  def flexible_square_root
    @user_num = params["number"].to_f
    ##deal with square root issue


    render("calculations/flexible_square_root.html.erb")
  end


end
