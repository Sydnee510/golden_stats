require "golden_stats/player"

class GoldenStats::Scraper 
  attr_reader :url
 
   def self.scrape
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
   player = doc.css("div.player-name__inner-wrapper").each do |anchor|
    #  player = doc.css("tr").each do |anchor|
     # binding.pry
       hash = { 
        url: anchor.css("a").attr("href").value,  
        name: anchor.css("a").text,
         pl_num: anchor.css("span.playerNumber").text,
         pl_pos: anchor.css("span.playerPosition").text
        # more_info = doc.css("tr") 
        # games_played:
        # points:
        # fouls:
        # rebounds:
        # field_goal_per:
        # three_point_per:
        # free_throw_per:
        # assists:
        # steals:
        # turn_overs:
        # fouls:
        
         }
     GoldenStats::Player.new(hash)
     

end 
end
  
#   def 
end
