#require 'player'

class GoldenStats::Scraper 
  attr_reader :url
 
   def self.scrape
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
    player = doc.css("div.player-name__inner-wrapper").each do |anchor|
      binding.pry
       hash = { 
        url: anchor.css("a").attr("href").value  
        name: anchor.css("a").text
         }
    # GoldenStats::Player.new(hash)

 
end 
end
#   def 
end
