

#puts "what is your name?"
#name = gets.chomp
#puts "your name is #{name}" 

#how to randomise input/choose random things from an array method
#keep score between user and computer
#when gets to 3, they win - user loop
#instantiate a new game when the file runs, all scores are 0
#keep asking for input until someone scores 3 (while loop)
#loops, iteration, randomizing, instantiation, input

#make computer choices method
#make player choices method
#make play game method


class RockPaperScissorsGame
    attr_reader :your_score, :computer_score, :name, :computer_choice, :input
    def initialize
        @your_score = 0
        @computer_score = 0
        @rock = "Rock"
        @scissors = "Scissors"
        @paper = "Paper"
        @input = input
        @computer_choice = computer_choice
    end

    def see_scores
        puts "Your score is #{@your_score}"
        puts "Computer's score is #{@computer_score}"
    end

    def reset_scores
        @your_score = 0
        @computer_score = 0
    end

    def get_player_name
        puts "Enter player name"
        name = gets.chomp.capitalize
        puts "Player name is #{name}"
    end

    def get_player_input
        loop do
            puts "Rock, paper or scissors?"
            @input = gets.chomp.capitalize
            if (@input != @rock) && (@input != @paper) && (@input != @scissors)
                puts "That's not a valid input, try again!"
                next #skip this iteration and go back round again
            else
                break
            end
        end
    end

    def get_computer_input
        @computer_choice = ["rock", "paper", "scissors"].sample
        puts "Computer throws #{@computer_choice}"
    end

    def update_scores
        if @input.downcase == @computer_choice
            puts "Draw!"
        elsif @input == "Rock" && @computer_choice == "scissors"
            puts "You win!"
            @your_score += 1
        elsif @input == "Paper" && @computer_choice == "rock"
            puts "You win!"
            @your_score += 1
        elsif @input == "Scissors" && @computer_choice == "paper"
            puts "You win!"
            @your_score += 1
        else
            puts "You lose!"
            @computer_score +=1
        end
    end

    def announce_winner
        if @your_score == 3
            puts "Congratulations, you won!"
        else
            puts "Sorry, you lose! Try again next time!"
        end
    end

    def play_game
        loop do 
            get_player_input
            get_computer_input
            update_scores
            see_scores
            if @your_score == 3 || @computer_score == 3
                break # completely breaks the loop
            end
        end
        announce_winner
    end

end

game = RockPaperScissorsGame.new

game.get_player_name
game.play_game
