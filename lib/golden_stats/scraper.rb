#require 'nokogiri'
# require 'open-uri'
# require 'pry'
# require_relative './player.rb'
class Scraper 
  def get_page 
    doc =  Nokogiri::HTML(open("https://www.nba.com/warriors/stats/points"))
 # binding.pry
  end
  def 
end