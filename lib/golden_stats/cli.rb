#module GoldenStats
class GoldenStats::CLI
  def start 
   # puts "hello world!"
  #   input = ""
  #   while input != "exit"
     puts "Welcome to the Warriors Stats portal!"
     puts "Please enter your faviorite player's name:"
     name = gets.chomp
     puts "You entered player \"#{name}\""
     scraper = GoldenStats::Scraper.new(name)
     puts "here is the player"
     puts scraper.players
   
  #   puts "To quit, type 'exit'."
  #   input = gets.strip
  # end 
end
end