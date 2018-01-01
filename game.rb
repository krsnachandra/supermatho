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
    question(AddQuestion)
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
    @score + 1
  end

  def print_score
    puts "Your score is #{@score}!"
  end

end

MathGame.main