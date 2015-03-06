class Product
    def set_title=(product_title)
        @title = product_title
    end
    
    def get_title
        return @title
    end
    
    def set_price=(product_price)
        @price = product_price
    end
    
    def get_price
        return @price
    end
    
    def set_stock=(product_stock)
        @stock = product_stock
    end
    
    def get_stock
        return @stock
    end
    
    
end

first_product = Product.new
first_product.set_title = "Comfy Blanket"
product_title = first_product.get_title
first_product.set_price = "19.99"
product_price = first_product.get_price
first_product.set_stock = "20"
product_stock = first_product.get_stock
puts "Title: #{product_title}\n Quantity: #{product_stock}\n Price: #{product_price}"
puts first_product.inspect