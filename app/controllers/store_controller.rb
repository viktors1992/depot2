# class StoreController < ApplicationController
#   skip_before_action :authorize
#   include CurrentCart
#   before_action :set_cart
#   before_action :session_counter, only: :index
#   #before action :reset_counter, only: :create
#   def session_counter 

#       if session[:counter].nil?  #|| @line_item
#         session[:counter] = 0 
#       end
#         session[:counter] += 1      
#       @session_counter = session[:counter]




#   end

#   def index
#     @products = Product.order(:title)
#   end
# end
class StoreController < ApplicationController
  skip_before_action :authorize

  include CurrentCart
  before_action :set_cart
  include VisitCounter
  before_action :set_counter, only: [:index]

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end
end