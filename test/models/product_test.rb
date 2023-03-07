require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "create" do
    "Product.count", 1 do
    post "/products.json" params: {name: "test", price: 10, image_url: "test.jpg", description: "test description"}
    assert_response 200
  end
  post "/products.json", params{}
    assert_response 422
  end
  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: {name: "Updated name"}
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.price, data["price"]
    assert_equal product.image_url, data["image_url"]
    assert_equal product.description, data["description"]

    patch "/products/#{product.id}.json", params: {name: ""}
    assert_response 422
  end  
end
