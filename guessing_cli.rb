def start
    puts "Guess a number between 1 and 6."
end

def game_loop
    user_input = gets.chomp
    exit_game = 'Guess again or type "exit" to quit'
    lines = "----------------------------------"
    until user_input == "exit"
        random = rand(1..6)
        if user_input.to_i == random
            puts lines
            puts "You guessed the correct number!"
            puts exit_game
            puts lines
            user_input = gets.chomp
        else
            puts lines
            puts "The computer guessed #{random}."
            puts exit_game
            puts lines
            user_input = gets.chomp
        end
    end
end

def exit_program
    puts "Goodbye!"
end

def run_guessing_game
    start
    game_loop
    exit_program
end
