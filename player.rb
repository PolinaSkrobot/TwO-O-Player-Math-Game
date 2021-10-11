class Player

  attr_reader :name #getter
  attr_accessor :score #getter + setter
  attr_accessor :answer
  # attr_writer => setter only

  # constructor
  def initialize(name)
    @name = name
    @score = 3
  end

  def turn

    val1 = rand(1...20)
    val2 = rand(1...20)
    right_answer = val2+val1
    puts "#{@name}: What does #{val1} plus #{val2} equal"
    answer = gets.to_i
    if right_answer == answer
      puts "Yes! You are correct!"    
    else 
      @score -= 1
      puts "Seriously? Nooooo!"
    end

  end

  def looser?
    @score = 0
  end
 

end