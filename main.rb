require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require_relative "./player"
require_relative "./human_player"
require_relative "./computer_player"
require_relative "./game"
require_relative "./game_message"
require_relative "./round"
require_relative "./racer"
require_relative "./response"
require_relative "./mystery_box"
require_relative "./power_ups"
require_relative "./powerup_acme_tnt"
require_relative "./powerup_delorean"
require_relative "./powerup_mario_star"
require_relative "./powerup_noisy_cricket"
require_relative "./powerup_subzero"
require_relative "./powerup_ring"

GameMessage.intro
game = Game.new
game.start_game?
