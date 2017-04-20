class CalculationsController < ApplicationController

  def flexible_square
    @user_num = params["number"].to_f
    #Parameters: {"number"=>"8"}


    render("calculations/flexible_square.html.erb")
  end

  def flexible_square_root
    @user_num = params["number"].to_f
    @square_root = @user_num ** .5


    render("calculations/flexible_square_root.html.erb")
  end


end
