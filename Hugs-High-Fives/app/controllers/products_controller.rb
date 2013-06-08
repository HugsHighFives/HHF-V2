class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def show
    @products = Product.find_by_id(params["id"])
  end


end
