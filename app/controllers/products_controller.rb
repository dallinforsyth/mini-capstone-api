class ProductsController < ApplicationController
  def show
    # @product = Product.first
    @product = Product.find_by(id: params[:id])

    render :show
  end

  def index
    @products = Product.all

    render :index
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      image_url: params["iamge_url"],
      description: params["description"],
    )
    render :show
  end
end
