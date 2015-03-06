class Product
    
    attr_accessor :title, :price, :stock 
    
end

first_product = Product.new
first_product.title = "Comfy Blanket"
product_title = first_product.title
first_product.price = "19.99"
product_price = first_product.price
first_product.stock = "20"
product_stock = first_product.stock
puts "Title: #{product_title}\n Quantity: #{product_stock}\n Price: #{product_price}"
puts first_product.inspect