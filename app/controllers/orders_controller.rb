class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    @order = Order.create(
      user_id: current_user.id,

    )
    if @order.valid?
      carted_products.update_all(status: "purchased", order_id: @order.id)
      @order.update_total
    end

    render :show
  end

  def show
    @order = Order.find_by(id: params[:id])

    if @order
      :show
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    @orders = current_user.orders

    :index
  end
end
