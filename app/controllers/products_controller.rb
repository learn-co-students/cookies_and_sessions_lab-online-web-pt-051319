class ProductsController < ApplicationController
  def index
  end

  def add
    # cart << @product.id
    cart << params[:product]
    render :index
  end
end
