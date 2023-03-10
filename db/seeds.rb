Product.create!(name: "apple", price: 2, description: "delicioius looking red apple")
Product.create!(name: "orange", price: 1.5, description: "orange with fruit based wax coating")
Product.create!(name: "lemon", price: 0.25, description: "myer lemon")
Product.create!(name: "watermelon", price: 5, description: "seedless watermelon")

Supplier.create!(name: "ABC Produce", email: "abcproduce@test.com", phone_number: "800-776-3823")
Supplier.create!(name: "Don's Lemons", email: "lemons@test.com", phone_number: "800-353-6667")
Supplier.create!(name: "Washington Apples, LLC", email: "washingtonapples@test.com", phone_number: "800-927-7537")


Image.create!(image_url: "https://pngtree.com/free-png-vectors/apple", product_id: 1),
Image.create!(image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2016%2F02%2F23%2F17%2F42%2Forange-1218158_1280.png&imgrefurl=https%3A%2F%2Fpixabay.com%2Fillustrations%2Ffruit-orange-png-transparent-1218158%2F&tbnid=yOz9TOImuKVuIM&vet=12ahUKEwi_xciH1bn9AhW8CVkFHbH8CToQMygGegUIARDxAQ..i&docid=aLcMNn_lTcNXpM&w=1280&h=1216&q=orange%20images%20png&ved=2ahUKEwi_xciH1bn9AhW8CVkFHbH8CToQMygGegUIARDxAQ", product_id: 2),
Image.create!(image_url: "https://www.vecteezy.com/png/7303418-lemon-fruit-food-transparent-png", product_id: 3),
Image.create!(image_url: "https://pixabay.com/images/search/watermelon/", product_id: 4)
