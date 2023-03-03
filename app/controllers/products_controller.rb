class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    product.save
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params["id"])
    product.update(
      name: params["name"] || product.name,
      price: params["price"] || product.price,
      image_url: params["image_url"] || product.image_url,
      description: params["description"] || product.description,
    )
    render json: product.as_json
  end
end
