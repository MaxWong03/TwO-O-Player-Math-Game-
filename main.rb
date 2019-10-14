require 'pry'
require './players'
require './questions'
require './games'


player_1 = Player.new
player_2 = Player.new

game = Game.new(player_1, player_2)
player_1.point = 0
puts game.game_over?