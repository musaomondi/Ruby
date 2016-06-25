def total(prices)
  amount=0 #the total starts at 0
  prices.each do |price| #process each price
    amount+=price #add the current price to the total
  end
  amount #Return the total
end

def refund(prices)
  amount=0 #the total starts at 0
  prices.each do |price| #process each price
    amount-=price #Refund the current price
  end
  amount #Return the refund
end

def show_discounts(prices)
  prices.each do |price| #process each price
    amount_off = price/3.0 #calculate discount
    puts format("Your discount: $%.2f", amount_off) #format the discount
  end
end

prices=[3.99,25.00,8.99] #create the array holding the prices

puts format("%.2f", total(prices)) #pass our array of prices to the method and format the result.
puts format("%.2f", refund(prices)) #pass our array of prices to the method and format the result.
show_discounts(prices) #pass our array of prices to the method
