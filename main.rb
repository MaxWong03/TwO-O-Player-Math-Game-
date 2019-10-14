require 'pry'
require './players'
require './questions'
require './games'


player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

game = Game.new(player_1, player_2)
game.start_game
