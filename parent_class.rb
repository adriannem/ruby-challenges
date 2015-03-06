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

class Amazon < Product
    
    def set_asin=(asin_number)
        @asin = asin_number
    end
    
    def get_asin
        return @asin
    end
    
end

class Walmart < Product
    
    def set_item=(item_number)
        @item = item_number
    end
    
    def get_item
        return @item
    end
    
end

amazon_product = Amazon.new
amazon_product.set_title = "Comfy Blanket"
amazon_title = amazon_product.get_title
amazon_product.set_price = "19.99"
amazon_price = amazon_product.get_price
amazon_product.set_stock = "20"
amazon_stock = amazon_product.get_stock
amazon_product.set_asin = "B00P6U8WKY"
amazon_asin = amazon_product.get_asin

walmart_product = Walmart.new
walmart_product.set_title = "Gaming Chair"
walmart_title = walmart_product.get_title
walmart_product.set_stock = "40"
walmart_stock = walmart_product.get_stock
walmart_product.set_price = "39.99"
walmart_price = walmart_product.get_price
walmart_product.set_item = "007132893"
walmart_item = walmart_product.get_item

puts "Title: #{amazon_title}\n Quantity: #{amazon_stock}\n Price: #{amazon_price}\n ASIN: #{amazon_asin}\n"
puts "Title: #{walmart_title}\n Quantity: #{walmart_stock}\n Price: #{walmart_price}\n Item: #{walmart_item}\n"

puts amazon_product.inspect
puts walmart_product.inspect
