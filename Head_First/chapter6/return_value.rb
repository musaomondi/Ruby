#the value of the last expression in a block gets returned to the method
def print_block_result
  block_result = yield #assigns the result of the block to a variable
  puts block_result
end

print_block_result{ 1+1 } #code is evaluated; block returns 2

print_block_result do
  "I'm not the last expression, so I'm not the return value."
  "I'm the result!" #only the last expression's value is returned
end

print_block_result { "I hated Truncated".include?("Truncated") }

