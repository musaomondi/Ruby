def total(prices)
  amount=0 #the total starts at 0
  index=0 #start at the first array
  while index < prices.length #while we're still within the array
    amount += prices[index] #add the current price to the total
    index += 1 #move to the next price
  end
  amount #Return the total
end
prices=[3.99,25.00,8.99] #create the array holding the prices
puts format("%.2f", total(prices)) #pass our array of prices to the method and format the result.

