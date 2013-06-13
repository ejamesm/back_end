###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# ###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################

set_of_numbers = (1..10).to_a

#Welcomes the users to your game. Lets them know I am the creator. 
puts "Welcome to the Secret Number Game!  I, James McLaughlin, and the creator!"

# Asks the user for their name and stores it in the variable user_name.
puts "Please enter your first name."

user_name = $stdin.gets.chomp

# Personally greets the player by printing to the screen, "Hi user_name! 
#	 Lets them know they have 3 guesses to guess the Secret Number between 1 and 10.
puts " Hi #{user_name}!  You have three guesses to guess the \"Secret Number\" between 1 and 10."


# Creates a new Integer variable called `guesses_left`, this counts
#    down how many more times the Player can guess. It's initial value is 3.
guesses_left = 3


# Using String Interpolation, concatenates the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
puts "Okay #{user_name}, you have #{guesses_left} guesses remaining!  Use them wisely!"


# Creates a new Integer variable called `secret_number` and sets the value to
#    a number of my choosing between 1 and 10. This is the number that
#    our Player will try to guess.

#Generates range number from set_of_numbers array
secret_number = set_of_numbers.sample

#Hash of possible messages
messages = {
  :win => "Correct! Thank you for playing.  Have a nice day.",
  :lose => "You LOSE! The Secret Number was #{secret_number}!",
  :too_low => "Sorry, guess again. The Secret Number is higher than that guess.",
  :too_high => "Sorry, guess again.  The Secret Number is lower than that guess."}





#the game's loop

3.times do |count|
	puts "You have #{guesses_left} guesses remaining."

# Asks the Player to make their  guess. 
puts "Please make a guess."

user_guess = $stdin.gets.chomp.to_i

  if user_guess == secret_number
	puts messages[:win]
	puts "You guessed in #{count + 1} turns!"
	exit
  elsif user_guess > secret_number
  	guesses_left -= 1
  	puts messages[:too_high]
  elsif user_guess < secret_number
  	guesses_left -= 1
  	puts messages[:too_low]
  end
end

if guesses_left == 0
	puts messages[:lose]

end



#Uses condition statements to ask for user guesses and compares the input to the secret number.  
#If the guess is correct the user wins and the game is over.  
#Depending on whether or not they guess correctly,
# we tell the user to guess higher or lower.  
# After three guess inputs, the user is imformed that they have lost the game.  
# At the end we tell losing users what the secret number was.  


# if first_guess == secret_number
# 	puts "Correct! Thank you for playing.  Have a nice day."
# exit

# elsif first_guess < secret_number
# 	guesses_left = guesses_left -= 1
# 	puts "Sorry, guess again. The Secret Number is higher than #{first_guess}."

# elsif first_guess > secret_number
# 	guesses_left = guesses_left -= 1
# 	puts "Sorry, guess again.  The Secret Number is lower than #{first_guess}."

# end	

# puts "What is your second guess?"

# second_guess = $stdin.gets.chomp.to_i

# if second_guess == secret_number
# 	puts "Correct! Thank you for playing.  Have a nice day."
# exit

# elsif second_guess < secret_number
# 	guesses_left = guesses_left -= 1
# 	puts "Sorry, guess again. The Secret Number is higher than #{second_guess}."

# elsif second_guess > secret_number
# 	guesses_left = guesses_left -= 1
# 	puts "Sorry, guess again.  The Secret Number is lower than #{second_guess}."

# end	

# puts "What is your third guess?"

# third_guess = $stdin.gets.chomp.to_i

# if third_guess == secret_number
# 	puts "Correct! Thank you for playing.  Have a nice day."
# exit

# elsif third_guess < secret_number
# 	guesses_left = guesses_left -= 1
# 	puts "You LOSE! The Secret Number was #{secret_number}!"

# elsif third_guess > secret_number
# 	guesses_left = guesses_left -= 1
# 	puts "You LOSE! The Secret Number was #{secret_number}!"
# end	

# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################
