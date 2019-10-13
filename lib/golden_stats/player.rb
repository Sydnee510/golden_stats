
class GoldenStats::Player
  
  attr_accessor :name, :url, :pl_num, :pl_pos 
  
  @@all = []
  
  def initialize(attributes)
    @name = attributes[:name] 
    @url = attributes[:url]
    @pl_num = attributes[:pl_num]
    @pl_pos = attributes[:pl_pos]
    @@all << self
  end 
 
  def self.all 
    @@all 
  end
  
end 