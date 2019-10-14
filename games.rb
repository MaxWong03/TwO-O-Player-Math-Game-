class Game
  def initialize (player_1, player_2)
    @players = [player_1, player_2]
  end

  def game_over?
    loser = @players.select {|player| player.point == 0}
    false unless loser.length > 0
    true
  end
end

