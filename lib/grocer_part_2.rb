require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  
  new_cart=cart
  
  coupons.each do |coupon|
    new_cart.each do |item|
      if coupon[:item]== item[:item]
        binding.pry
        item[:count]= item[:count]-coupon[:num]
      
        new_cart.push(item)
        binding.pry
        new_cart[-1][:item]= "#{coupon[:item]} W/COUPON"
        new_cart[-1][:price]=coupon[:cost]/coupon[:num]
        new_cart[-1][:count]=coupon[:num]
      end 
    end 
  end 

new_cart  
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
