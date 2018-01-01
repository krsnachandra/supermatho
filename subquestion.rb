class SubQuestion

  attr_accessor :sans

  def initialize
    num1 = 1 + rand(100)
    num2 = 1 + rand(100)
    @sans = num1 - num2
    puts "What is #{num1} - #{num2}?"
  end
end