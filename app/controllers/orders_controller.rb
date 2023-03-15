class OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if @order.save
      # happy_path (ie successful)
      render json: { message: "order created" }
    else
      # sad_path (ie unsuccessful)
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
