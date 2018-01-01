class MultQuestion

  attr_accessor :mans

  def initialize
    num1 = 1 + rand(12)
    num2 = 1 + rand(12)
    @mans = num1 * num2
    puts "What is #{num1} x #{num2}?"
  end
end