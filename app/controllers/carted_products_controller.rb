class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    pp @carted_products
  end

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    render :show
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params["id"])
    carted_product.update(
      user_id: current_user.id,
      product_id: carted_product.product_id,
      quantity: carted_product.quantity,
      status: "removed",
      order_id: nil,
    )

    render json: { message: "Product was deestroyyyed!" }
  end
end
