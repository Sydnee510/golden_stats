require 'pry'
require 'player'
class GoldenStats::Scraper 
  attr_reader :url
 
   def self.scrape
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
    player = doc.css("span.playerName a").map do |anchor|
      binding.pry
      hash = { }
    # GoldenStats::Player.new(hash)

 
end 
end
#   def 
end
