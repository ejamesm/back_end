###############################################################################
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
#
# 1. Welcome users to your game. Let them know you are the creator. 

#Welcomes the users to your game. Lets them know I am the creator. 
puts "Welcome to the Secret Number Game!  I, James McLaughlin, and the creator!"

#
# 2. Ask the user for their name and store it in a variable.

# Asks the user for their name and stores it in the variable user_name.
puts "Please enter your first name."

user_name = $stdin.gets.chomp

#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.



# Personally greets the player by printing to the screen, "Hi user_name! 
#	 Lets them know they have 3 guesses to guess the Secret Number between 1 and 10.
puts " Hi #{user_name}!  You have three guesses to guess the \"Secret Number\" between 1 and 10."

# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.


# Creates a new Integer variable called `guesses_left`, this counts
#    down how many more times the Player can guess. It's initial value is 3.
guesses_left = 3

#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.


# Using String Interpolation, concatenates the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
puts "Okay #{user_name}, you have #{guesses_left} guesses remaining!  Use them wisely!"

#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.


# Creates a new Integer variable called `secret_number` and sets the value to
#    a number of my choosing between 1 and 10. This is the number that
#    our Player will try to guess.
secret_number = 1

#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).


# Asks the Player to make their first guess. (Remember to cast input from the Player into the appropriate data type).
puts "What is your first guess?"

first_guess = $stdin.gets.chomp.to_i

#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.


#Uses condition statements to ask for user guesses and compares the input to the secret number.  
#If the guess is correct the user wins and the game is over.  
#Depending on whether or not they guess correctly,
# we tell the user to guess higher or lower.  
# After three guess inputs, the user is imformed that they have lost the game.  
# At the end we tell losing users what the secret number was.  


if first_guess == secret_number
	puts "Correct! Thank you for playing.  Have a nice day."
exit

elsif first_guess < secret_number
	guesses_left = guesses_left -= 1
	puts "Sorry, guess again. The Secret Number is higher than #{first_guess}."

elsif first_guess > secret_number
	guesses_left = guesses_left -= 1
	puts "Sorry, guess again.  The Secret Number is lower than #{first_guess}."

end	
	

#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.

puts "What is your second guess?"

second_guess = $stdin.gets.chomp.to_i

if second_guess == secret_number
	puts "Correct! Thank you for playing.  Have a nice day."
exit

elsif second_guess < secret_number
	guesses_left = guesses_left -= 1
	puts "Sorry, guess again. The Secret Number is higher than #{second_guess}."

elsif second_guess > secret_number
	guesses_left = guesses_left -= 1
	puts "Sorry, guess again.  The Secret Number is lower than #{second_guess}."

end	

puts "What is your third guess?"

third_guess = $stdin.gets.chomp.to_i

if third_guess == secret_number
	puts "Correct! Thank you for playing.  Have a nice day."
exit

elsif third_guess < secret_number
	guesses_left = guesses_left -= 1
	puts "You LOSE! The Secret Number was #{secret_number}!"

elsif third_guess > secret_number
	guesses_left = guesses_left -= 1
	puts "You LOSE! The Secret Number was #{secret_number}!"
end	

#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.


#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################

#Also, need to read
#http://ruby-doc.org/core-1.9.3/Array.html
#http://www.ruby-doc.org/core-1.9.3/Hash.html
#http://www.tutorialspoint.com/ruby/ruby_loops.htm

