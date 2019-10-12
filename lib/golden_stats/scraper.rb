#require 'nokogiri'
# require 'open-uri'
require 'pry'
# require_relative './player.rb'
class GoldenStats::Scraper 
  attr_reader :url
 
   def self.scrape
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
    player = doc.css("span.playerName a").map do |anchor|
      binding.pry
    #   name = 
    #   url = 
    # GoldenStats::Player.new(name, url)

 
end 
end
#   def 
end
