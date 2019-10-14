require 'pry'

class Question
  attr_reader :question, :answer
  def initialize (player)
    @player = player
  end

  def ask
    make_question
    puts question
    print "> "
  end

  def correct? (answer)
    if answer === @answer
      puts "YES! You are correct"
      true
    else
      puts "Seriously? No!"
      false
    end
  end

  private
  def make_question
    num_1 = rand(1..20)
    num_2 = rand(1..20)
    @question = "#{@player.name}: What is #{num_1} plus #{num_2} equal?"
    @answer = num_1 + num_2
  end
end

