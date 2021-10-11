require_relative './player'

class Game 

  # instance variables in constructor
  # '@' => instance variable, available on the class
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
  end

  def game_over?
   @players.select {|player| player.score == 0}.length > 0
  end


  def display_game_status
    # display status of the game  
    if @players.first.score == 0
      puts "#{@players.last.name} wins with a score of #{@players.last.score}/3"
      return puts "-----Game over-------"
    elsif @players.last.score == 0
      puts "#{@players.first.name} wins with a score of #{@players.first.score}/3"
      return puts "-----Game over, Good bye!-------"
    end
    puts "#{@players.first.name}: #{@players.first.score}/3 vs #{@players.last.name}: #{@players.last.score}/3"
  end

  # create methods
  def play
    @counter=1
    until (game_over?) do
      @counter+=1
      current_player = @players[@counter%2]
      # Round
      puts
      puts " ----NEW TURN---- "

      current_player.turn
      display_game_status
  
    end
  end

end