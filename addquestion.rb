class AddQuestion

  attr_accessor :aans

  def initialize
    num1 = 1 + rand(100)
    num2 = 1 + rand(100)
    @aans = num1 + num2
    puts "What is #{num1} + #{num2}?"
  end
end