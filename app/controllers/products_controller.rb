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
    name: "Grapefruit"
    price: 2.5
    image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.istockphoto.com%2Fid%2F1136679041%2Fphoto%2Fgrapefruit-isolated-on-white-background-clipping-path-full-depth-of-field.jpg%3Fs%3D612x612%26w%3D0%26k%3D20%26c%3DrL18zHp-1JjOubQoo2LLjkAAcvzBZw_8IucyelxW1DY%3D&imgrefurl=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fwhole-grapefruit-on-white&tbnid=Lr26qdAeIXRkfM&vet=12ahUKEwjm9c78mrz9AhUjFFkFHSkgCBoQMygOegUIARDRAg..i&docid=3NRXMMg33GieuM&w=612&h=612&itg=1&q=grapefruit%20whole&hl=en&ved=2ahUKEwjm9c78mrz9AhUjFFkFHSkgCBoQMygOegUIARDRAg"
    description: "Ruby Red Grapefruit"
    )
end
