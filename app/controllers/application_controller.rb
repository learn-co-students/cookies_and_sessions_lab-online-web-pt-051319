class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    
  helper_method :cart

  def cart
    session[:cart] ||= []
    #OR:  
    # session[:cart]? session[:cart] : session[:cart] = []
  end 

  def homepage
    render "products/index"
  end 

  def add 
    product = params[:product]
    self.cart << product
    render "products/index"
  end 
end
