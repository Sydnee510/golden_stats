require "golden_stats/player"
require 'pry'

class GoldenStats::Scraper 

 
   def self.scrape
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
   player = doc.css("div.player-name__inner-wrapper").each do |anchor|
     #binding.pry
    #  player = doc.css("tr").each do |anchor|
     new_player = GoldenStats::Player.new
        
        new_player.url = anchor.css("a").attr("href").value,  
        new_player.name = anchor.css("a").text,
         new_player.pl_num =  anchor.css("span.playerNumber").text,
         new_player.pl_pos = anchor.css("span.playerPosition").text

     #GoldenStats::Player.new(url, name, pl_num, pl_pos)
   end 
end
  
#   def 
end
