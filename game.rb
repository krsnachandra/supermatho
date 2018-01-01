require './question'

class MathGame

  def self.main
    game = MathGame.new
    game.start
  end

  def start
    puts Question.new
  end

end

MathGame.main