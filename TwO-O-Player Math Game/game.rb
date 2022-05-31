class Game
    attr_reader :name, :player_1, :player_2
    def initialize(name)
      @name = name
      @player_1 = Player.new('Player 1')
      @player_2 = Player.new('Player 2')
    end
  
    def start
      puts "New Game Started. Welcome #{player_1.name} and #{player_2.name}"
      pp @player_1
      pp @player_2
      turn
    end
  
    def show_stats
      puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
    end
  
    def turn
      @player_1.new_question
      @player_2.new_question
      if @player_1.lives > 0 && @player_2.lives > 0
        show_stats
        puts '---------NEW-TURN---------'
        turn
      else
        puts '---------GAME-OVER--------'
        puts 'Good bye!'
      end
    end
  end