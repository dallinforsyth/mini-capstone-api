class OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      quantity = params[:quantity].to_i
      subtotal = quantity * product.price
      tax = quantity * product.tax
      total = subtotal + tax

      @order = Order.create(

        quantity: quantity,
        product_id: params[:product_id],
        user_id: current_user.id,
        subtotal: subtotal,
        tax: tax,
        total: total,

      )
      render :show
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    @order = Order.find_by(id: params[:id])

    if current_user && current_user.id == @order.user_id
      :show
    else
      render json: {}, status: :unauthorized
    end
  end

  def index
    if current_user
      @orders = current_user.orders

      :index
    else
      render json: {}, status: :unauthorized
    end
  end
end
