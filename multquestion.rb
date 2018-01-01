class MultQuestion

  attr_accessor :ans

  def initialize
    num1 = 1 + rand(12)
    num2 = 1 + rand(12)
    @ans = num1 * num2
    puts "What is #{num1} x #{num2}?"
  end
end