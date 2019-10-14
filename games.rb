require './questions'

class Game
  attr_accessor :current_player
  def initialize (player_1, player_2)
    @players = [player_1, player_2]
    @current_player = 0
  end

  def game_over?
    loser = @players.select {|player| player.point == 0}
    if loser.length > 0
      return true
    end
    false
  end

  def start_round
    question = Question.new(@players[@current_player])
    question.ask
    answer = gets.chomp.to_i
    question.correct? answer
  end

  def update_score (player, result)
    if !result
      player.point -= 1
    end
  end

  def switch_player
    if @current_player == 0
      @current_player = 1
    else 
      @current_player = 0
    end
    puts "----- NEW TURN -----" unless game_over?
  end

  def show_score
    puts "P1: #{@players.first.point}/3 vs P2: #{@players.last.point}/3"
  end
  
  def end_game
    winner = @players.find {|player| player.point > 0}
    puts "----- GAME OVER! -----"
    puts "Player #{winner.name} wins with a score of #{winner.point}/3"
    puts "Good bye!"
  end
  
  def start_game
    puts "----- GAME STARTED! -----"
    while !self.game_over? do
      result = start_round
      update_score(@players[@current_player], result)
      show_score
      switch_player
    end
    end_game
  end

end



