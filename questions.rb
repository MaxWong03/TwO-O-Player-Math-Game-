require 'pry'

class Question
  attr_accessor :question, :answer
  def initialize (player)
    @player = player
  end

  def ask_question
    make_question
    puts question
    puts answer 
  end

  private
  def make_question
    num_1 = rand(1..20)
    num_2 = rand(1..20)
    self.question = "#{@player}: What is #{num_1} plus #{num_2} equal?"
    self.answer = num_1 + num_2
  end
end

