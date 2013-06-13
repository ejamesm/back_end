class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = { win: "You won!",
                 lose:  "You lost! :-(",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!" }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed, set_of_numbers)
    @guesses_allowed = guesses_allowed     #sets the number of guesses
    @current_guess_count = 0               #starts guess count at 0
    @player = Player.new                   #creates a new player
    @secret_number = SecretNumber.new(set_of_numbers)
    @max_guess = set_of_numbers
  end
  

  # Print who made this wonderful program :-)
  def print_created_by
    puts "Created by James McLaughlin"

  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    puts "Welcome to Secret Number Game!"
    print_created_by
    print "Please enter your name: "
    @player.name = $stdin.gets.chomp
    puts "Welcome, #{@player.name}! You have #{@guesses_allowed} guesses to guess a secret number between 1 and #{@max_guess}."
    puts "Let's get started!"
    guesses_left

    while @current_guess_count < @guesses_allowed
      puts "You have #{@guesses_left} guesses left."
      print "Please make guess number #{@current_guess_count + 1}: "
      @current_guess = $stdin.gets.chomp.to_i
      if guess_correct?(@current_guess) then
        puts @@messages[:win]
        exit
      elsif @current_guess > @secret_number.mynumber then
        puts @@messages[:too_high]
      elsif @current_guess < @secret_number.mynumber then
        puts @@messages[:too_low]
      end
        increment_guess_count
        guesses_left
    end
    puts @@messages[:lose]
    puts "The secret number was #{@secret_number.mynumber}"
  end


	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
   if guess == @secret_number.mynumber
        then return true
      end
      return false

  end


  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count
    @current_guess_count += 1
    
  end
  

  # Calculates the guesses the player has left.
  def guesses_left
    @guesses_left = @guesses_allowed - @current_guess_count
  
  end
end

