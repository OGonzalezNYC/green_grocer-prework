require "pry"
# each_with_object

def consolidate_cart(cart)
  cart_hash = {}
  cart.each do |food_item_hash|
    food_item_frequency = cart.count(food_item_hash)
    food_item_hash.each do |food_item_key, attribute_hash|
      attribute_hash[:count] = food_item_frequency
        if cart_hash == {}
          cart_hash = {food_item_key => attribute_hash}
        else  
          cart_hash[food_item_key] = attribute_hash
        end
    end 
  end 
  cart_hash
end


def apply_coupons(cart, coupons)
# cart is a {} 
# coupons is an [] containing one hash or multiple hashes.
  final_hash = nil 
# binding.pry
  final_hash = coupons.collect do |coupon_hash|
    coupon_hash.collect do |coupon_symbol, food_item_value|
# binding.pry    
      cart.collect do |food_item_key, attribute_hash|
# binding.pry 
        if food_item_key == food_item_value 
binding.pry
          cart[food_item_key][:count] = cart[food_item_key][:count] - coupon_hash[:num]
          cart[food_item_key" W/COUPON"] = {:price => coupon_hash[:cost], :clearance => food_item_key[:clearance], :count => 1}
        end 
      end
    end
  end 
  final_hash
end


def apply_clearance(cart)
  
end


def checkout(cart, coupons)
  
end