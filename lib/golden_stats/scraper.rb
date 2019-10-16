require "golden_stats/player"
require 'pry'

class GoldenStats::Scraper 

 
   def self.scrape
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
   player = doc.css("div.player-name__inner-wrapper").each do |anchor|
        url = anchor.css("a").attr("href").value,  
        name = anchor.css("a").text,
         pl_num =  anchor.css("span.playerNumber").text,
         pl_pos = anchor.css("span.playerPosition").text

     GoldenStats::Player.new(url, name, pl_num, pl_pos)
   end 
end
end
