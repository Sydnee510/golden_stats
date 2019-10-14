
class GoldenStats::Player
  
  attr_accessor :name, :url, :pl_num, :pl_pos 
  
  @@all = []
  
  def initialize(url = nil, name = nil, pl_num = nil, pl_pos = nil)
    @name = name 
    @url = url
    @pl_num = pl_num
    @pl_pos = pl_pos
    @@all << self
  end 
 
  def self.all 
    @@all 
  end
  
end 