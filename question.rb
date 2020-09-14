require "./turns"

class Question
  attr_accessor :number_One, :number_Two

  def initialize 
    @number_One = rand(1..20)
    @number_Two = rand(1..20)
  end

  def generate_question(player)
    puts "#{player}: What does #{number_One} plus #{number_Two} equal?"

    solution = @number_One + @number_Two
    return solution
  end

end

