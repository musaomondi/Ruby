class Student
  def rec(&my_block)
    puts "Am a student"
    yield
    puts "After block"
  end
  rec do
    puts "I'm here"
 end
  puts rec
end
