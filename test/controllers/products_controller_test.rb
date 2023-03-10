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
    assert_equal ["id", "name", "price", "description", "created_at", "updated_at"], data.keys

    assert_equal true, data.keys.include?("name")
  end

  test "create" do
    assert_difference "Product.count", 1 do
    post "/products.json", params: {supplier_id: Supplier.first.id, name: "Coffee", price: 10, description: "instant & delicious"}
    assert_response 200
  end
  
  post "products.json", params: {}
  assert_response 422

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: {name: "pear"}
    assert_response 200
    
    data = JSON.parse(response.body)
    assert_equal "pear", data["name"]
    assert_equal product.price, data["price"].to_i
    assert_equal product.description, data["description"]

    patch "products/#{product.id}.json", params: {name: ""}
    assert_response 422
  end
  test destroy do
    assert_difference "Product.count", -1 do
    delete "/products/#{Product.first.id}.json"
    assert_response 200
  end    
end  


end


