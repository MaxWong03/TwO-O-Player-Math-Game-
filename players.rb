class Player
  attr_accessor :point
  attr_reader :name
  
  def initialize (name)
    @name = name
    @point = 3
  end
  
end