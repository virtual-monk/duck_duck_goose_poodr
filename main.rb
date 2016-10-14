require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require_relative "./player"
require_relative "./game"
require_relative "./game_message"
require_relative "./round"

game = Game.new
GameMessage.intro
game.start_game?(gets.chomp)
player = Player.new(first_name: gets.chomp, human: true)
GameMessage.welcome(player)
Player.adding_players(game: game, player_count: gets.chomp.to_i)
game.players << player
game.play_round
