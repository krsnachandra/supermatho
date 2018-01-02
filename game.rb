require './addquestion'
require './subquestion'
require './multquestion'

class MathGame

  def self.main
    game = MathGame.new
    game.start
  end

  def initialize
    @score = 0
  end

  def start
    until level_complete? do
      question(AddQuestion)
    end
    puts "Level Complete!"
  end

  def question(quest)
    q = quest.new
    if gets.chomp.to_i == q.ans
      puts "Excellent!"
      add_one_to_score
    else
      puts "Try another one!"
    end
    print_score
  end

  def add_one_to_score
    @score += 1
  end

  def print_score
    puts "Your score is #{@score}!"
  end

  def level_complete?
    @score >= 5
  end

end

MathGame.main