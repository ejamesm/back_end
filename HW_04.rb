###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

set_of_numbers = (1..10).to_a

puts "Welcome to the Secret Number Game!  I, James McLaughlin, am the creator!"

puts "Please enter your first name."

user_name = $stdin.gets.chomp

puts " Hi #{user_name}!  You have three guesses to guess the \"Secret Number\" between 1 and 10."

secret_number = set_of_numbers.sample

messages = {
  :win => "Correct! Thank you for playing.  Have a nice day.",
  :lose => "You LOSE! The Secret Number was #{secret_number}!",
  :too_low => "Sorry, guess again. The Secret Number is higher than that guess.",
  :too_high => "Sorry, guess again.  The Secret Number is lower than that guess."}

def increment_guess_count(interger)
  return interger +=1
end

def guesses_left(guesses_used_so_far)
   return 3 - guesses_used_so_far
end




3.times do |count|

puts "Please make a guess."

user_guess = $stdin.gets.chomp.to_i

  if user_guess == secret_number
	puts messages[:win]
	puts "You got it in #{count + 1} guesses!"
	exit
  elsif user_guess > secret_number
  	puts messages[:too_high]
  	puts guesses_left(increment_guess_count(count)).to_s + " guesses left"
  elsif user_guess < secret_number
  	puts messages[:too_low]
  	puts guesses_left(increment_guess_count(count)).to_s + " guesses left"
  end
end

if guesses_left = 0
	puts messages[:lose]

end


