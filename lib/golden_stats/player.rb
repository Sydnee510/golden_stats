class Player 
  attr_accessor :name, :jersey_number, :position, :stats
  @@all = []
  def initialize(name, jersey_number, position, stats) 
    @name = name 
    @jersey_number = jersey_number
    @position = position
    @@all << self
  end 
  #just trying this out
  #does adding these lines work 
  #need to save my work frequent
  #new code 
end 