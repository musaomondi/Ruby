class LoveInterest
  def request_date
    if @busy
      puts "Sorry, I'm busy."
    else
      puts "Sure, let's go!"
      @busy = true
    end
  end
end

betty=LoveInterest.new
candice=LoveInterest.new

betty.request_date
candice.request_date
