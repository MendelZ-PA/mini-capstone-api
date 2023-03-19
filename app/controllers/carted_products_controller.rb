class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id],
    )
    if @carted_product.save
      # happy_path (ie successful)
      render json: { message: "created" }, status: 201
    else
      # sad_path (ie unsuccessful)
      render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
