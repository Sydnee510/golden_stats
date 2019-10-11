#require 'nokogiri'
# require 'open-uri'
require 'pry'
# require_relative './player.rb'
class GoldenStats::Scraper 
  attr_reader :url
  def initialize(name)
    @url = "http://www.nba.com/playerfile/#{name}"
   # http://www.nba.com/playerfile/stephen_curry
  end
  def players
    doc = Nokogiri::HTML(open(url))
    [url]
    #binding.pry
  end 
   def self.get_player
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
   # binding.pry
    player = doc.css("span.playerName a").map do |anchor|
      binding.pry
       name = 
       url = 
     GoldenStats::Player.new(name, url)

 
end 
end
#   def 
end