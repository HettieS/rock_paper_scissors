

#puts "what is your name?"
#name = gets.chomp
#puts "your name is #{name}" 

#how to randomise input/choose random things from an array method
#keep score between user and computer
#when gets to 3, they win - user loop
#instantiate a new game when the file runs, all scores are 0
#keep asking for input until someone scores 3 (while loop)
#loops, iteration, randomizing, instantiation, input


class RockPaperScissorsGame
    attr_reader :your_score, :computer_score, :name, :computer_choice, :input
    def initialize
        @your_score = 0
        @computer_score = 0
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
        name = gets.chomp
        puts "Player name is #{name}"
    end

    def update_player_score_by_one
        your_score += 1
    end

    def update_computer_score_by_one
        computer_score += 1
    end

    def take_go
        @your_score = 0
        @computer_score = 0
        @rock = "Rock"
        @scissors = "Scissors"
        @paper = "Paper"
        loop do 
            puts "Rock, paper or scissors?"
            input = gets.chomp.capitalize
            computer_choice = ["rock", "paper", "scissors"].sample
            if input == computer_choice
                puts "Computer throws #{computer_choice}"
                puts "Draw!"
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input == "Rock" && computer_choice == "paper"
                puts "Computer throws #{computer_choice}"
                puts "You lose!"
                @computer_score += 1
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input == "Rock" && computer_choice == "scissors"
                puts "Computer throws #{computer_choice}"
                puts "You win!"
                @your_score += 1
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input == "Paper" && computer_choice == "rock"
                puts "Computer throws #{computer_choice}"
                puts "You win!"
                @your_score += 1
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input == "Paper" && computer_choice == "scissors"
                puts "Computer throws #{computer_choice}"
                puts "You lose!"
                @computer_score += 1
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input == "Scissors" && computer_choice == "rock"
                puts "Computer throws #{computer_choice}"
                puts "You lose!"
                @computer_score += 1
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input == "Scissors" && computer_choice == "paper"
                puts "Computer throws #{computer_choice}"
                puts "You win!"
                @your_score += 1
                puts "Your score is #{your_score}"
                puts "Computer's score is #{computer_score}"
            elsif input != @rock || @paper || @scissors
                puts "I don't recognise that...try again!"
            end
            if @your_score == 3 || @computer_score == 3
                break
            end
        end
        if @your_score == 3
            puts "Congratulations, you won!"
        else
            puts "Sorry, you lose! Try again next time!"
        end
    end


    

end

game = RockPaperScissorsGame.new

game.get_player_name
game.take_go
