require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Product.count, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "image_url", "description", "created_at", "updated_at"], data.keys

    assert_equal true, data.keys.include?("name")
  end

  test "create" do
    assert_difference "Product.count", 1 do
    post "/products.json", params: {name: "Coffee", price: 10, image_url: "", description: "instant & delicious"}
  end
    
   test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: {name: "pear"}
    assert_response 200
    
    data = JSON.parse(response.body)
    assert_equal "pear", data["name"]
  end  
end


