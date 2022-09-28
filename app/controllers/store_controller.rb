class StoreController < ApplicationController
  before_action :session_counter
  def session_counter 

      if session[:counter].nil?  #|| @line_item
        session[:counter] = 0 
      end
        session[:counter] += 1      
      @session_counter = session[:counter]




  end

  def index
    @products = Product.order(:title)
  end
end
