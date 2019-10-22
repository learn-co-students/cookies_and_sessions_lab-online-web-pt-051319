class ProductsController < ApplicationController
    def index
        session[:cart].nil? ? session[:cart]=[] : session[:cart]
    end

    def new
    end

    def create
        session[:cart] << params[:product]
        render action: "index"
    end

    private

    def product_params
        params.permit(:product)
    end
end