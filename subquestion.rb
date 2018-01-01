class SubQuestion

  attr_accessor :ans

  def initialize
    num1 = 1 + rand(100)
    num2 = 1 + rand(100)
    @ans = num1 - num2
    puts "What is #{num1} - #{num2}?"
  end
end