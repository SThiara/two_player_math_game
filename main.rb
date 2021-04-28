require './classes/player'
require './classes/math_game_logic'
require './classes/game_text'
require './classes/game_runner'

player1 = Player.new("P1")
player2 = Player.new("P2")
text = Game_Text.new
game = Math_Game_Logic.new
runner = Game_Runner.new

while player1.lives > 0 && player2.lives > 0
  runner.run_game(player1, player2, game, text)
end

puts runner.end_game(player1, player2, text.game_over)