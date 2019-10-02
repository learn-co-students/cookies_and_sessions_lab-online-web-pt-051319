class ProductsController < ApplicationController 

    def index

    end
  
    def add
      cart << params[:product]
      render :index
    end

end

#this program allows for empty cart items to be added. 
#Also displays the array of items as you add them. Not very practical, but functional.