class Game_Text
  attr_reader :new_turn, :game_over, :correct_response, :incorrect_response

  def initialize
    @new_turn = "----- NEW TURN -----"
    @game_over = "----- GAME OVER -----"
    @correct_response = "YES! You are correct!"
    @incorrect_response = "NO! You are wrong!"
  end

  def question(player_name, num1, num2)
    "#{player_name}: What does #{num1} + #{num2} equal?"
  end

  def player_scores(p1_lives, p2_lives)
    "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
  end

  def player_result(player, result)
    "#{player.name} secures a #{result} with a score of #{player.lives}/3"
  end
end