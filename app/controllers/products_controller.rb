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
      description: params["description"],
      supplier_id: params["supplier_id"],

    )
    if @product.valid?
      if params[:url]
        Picture.create(url: params[:url], product_id: @product.id)
      end
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
    )
    if @product.valid?
      if params[:url]
        Picture.create(url: params[:url], product_id: @product.id)
      end
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product was deestroyyyed!" }
  end
end
