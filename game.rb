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
    puts "💎"
    puts "Welcome to Supermatho!"
    loop do
      puts "💎"
      puts "Would you like to practice addition, subtraction, or multiplication? (+ / - / x)"
      entry = gets.chomp
      case entry
      when "+"
        puts "Get ready to add some numbers!"
        until level_complete? do
          question(AddQuestion)
        end
        puts "Level Complete!"
        @score = 0
      when "-"
        puts "Get ready for some subtraction!"
        until level_complete? do
          question(SubQuestion)
        end
        puts "Level Complete!"
        @score = 0
      else
        puts "Hope you're ready to multiply!"
        puts "If you need a reminder of how multiplication works, type '?'."
        if gets.chomp == '?'
          puts "If you have the equation 3x4 it's like you have 3 empty apple trees and you put 4 apples in each apple tree. How many apples are there in total?"
        end
        until level_complete? do
          question(MultQuestion)
        end
        puts "Level Complete!"
        @score = 0
      end
    end
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