class ProductsController < ActionController::Base
  helper_method :cart

  def index
  end 

  def add
    cart << params[:product]
    render :index
  end 

  def cart
    session[:cart] ||= []
  end
end 
