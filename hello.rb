#Get My Number Game
#Written by :you! 
puts "Welcome to 'Guess My Number'"
print "What's your name?"
input = gets
name=input.chomp
puts "Welcome, #{name}!"

#Store a random number for a player to guess
puts "I've a random number between 1 and 100."
puts "Can you guess it?"
target=rand(100)+1

#Track how many guesses you have made
num_guesses=0
guessed_it = false #Track whether the player has guessed correctly

until num_guesses == 10 || guessed_it
puts "You've got #{10-num_guesses} guesses left."
print "Make a guess:"
guess=gets.to_i
num_guesses += 1

#Compare the guess to the target
#print appropriate message
if guess < target
puts "Oops! Your guess was low"
elsif guess>target
puts "Oops! Your guess was high"
elsif guess==target
puts "Congrats, #{name}!"
puts "You guess my number in #{num_guesses} guesses!"
guessed_it = true
end
end

#if the player run out of turns, tell them what the number was
unless guessed_it
puts "Sorry, #{name}. You didn't get my number. It was #{target}."
end 
