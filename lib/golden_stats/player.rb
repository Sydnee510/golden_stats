
class GoldenStats::Player
  
  attr_accessor :name, :url
  
  @@all = []
  
  def initialize(attributes)
    @name = attributes[:name] 
    @url = attributes[:url]
    @@all << self
  end 
 
  def self.all 
    @@all 
  end
  
end 