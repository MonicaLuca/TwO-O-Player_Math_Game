require "./players"
require "./turns"

class Math_game < Players
  def initialize(name)
    @name = name
  end

  player1 = Players.new("Player 1")
  player2 = Players.new("Player 2")

  turn = Turns.new(player1, player2)
  turn.run 
  turn.status(player1, player2)
  
  # puts player2.name
  # puts player1.lives_count

end

