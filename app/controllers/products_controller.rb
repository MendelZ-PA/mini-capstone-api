class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
    render template: products, :include => [:supplier]
  end

  def show
    product_id = params[:id]
    product = Product.find_by(id: product_id)
    render template: "products/show"
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      # happy_path (ie successful)
      render template: "products/show"
    else
      # sad_path (ie unsuccessful)
      render json: { errors: @product.errors.full.messages }, status: :unprocessable_entity
    end
  end

  def update
    product_id = params[:id]
    @product = Product.find(product_id)
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
    )
    if @product.valid?
      #happy_path
      render template: "products/show"
    else
      #sad_path
      render json: { errors: @product.errors.full.messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product successfully destroyed!" }
  end
end
