=begin 
require './player'
require './math_game_logic'
require './game_text' 
=end

class Game_Runner
  def run_game(player1, player2, game, text)
    puts text.new_turn
    game.randomize()

    puts text.question(player1.name, game.num1, game.num2)
    response = gets.chomp.to_i
    if response == game.sum
      puts text.correct_response
      puts text.player_scores(player1.lives, player2.lives)
    else
      player1.lives -= 1
      puts text.incorrect_response
      puts text.player_scores(player1.lives, player2.lives)
    end

    game.randomize()
    puts text.question(player2.name, game.num1, game.num2)
    response = gets.chomp.to_i
    if response == game.sum
      puts text.correct_response
      puts text.player_scores(player1.lives, player2.lives)
    else
      player2.lives -= 1
      puts text.incorrect_response
      puts text.player_scores(player1.lives, player2.lives)
    end
  end

  def end_game(player1, player2, game_over)
    if player1.lives == 0 && player2.lives == 0
      "Nobody wins!\n#{game_over}"
    elsif player1.lives == 0
      "#{player2.name} wins with a score of #{player2.lives}/3\n#{game_over}"
    else
      "#{player1.name} wins with a score of #{player1.lives}/3\n#{game_over}"
    end
  end
end