class ProductsController < ApplicationController

  def remove
    m = Product.find_by_id(params["id"])
    m.remove
    redirect_to "/products"
  end

  def index
      sort_direction = params["sortby"]
      if sort_direction == nil
        sort_direction = "asc"
      end
      @products = Product.order("title #{sort_direction}").limit(100)
  end

  def show
      @product = Product.find_by_id(params["id"])
      session["last_product_id"] = @product.id
  end

  def create
      @product = Product.new
      @product.title = params[:title]
      @product.description = params[:description]
      @product.detail = params[:detail]
      @product.price = params[:price]
      if @product.save
        redirect_to "/products"
      else
        redirect_to "/products/new", notice: "Nice try."
      end
    end

    def new
    if session["user_id"].blank?
      redirect_to "/products", notice: "Please sign in first."
    end
  end
end
