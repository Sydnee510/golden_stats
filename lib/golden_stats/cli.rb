#module GoldenStats
class GoldenStats::CLI
  
  def start 
     puts "Welcome to the Warrior's Stats portal!"
     puts
    # puts "Here is the roster for the preason #{players}"
     GoldenStats::Scraper.scrape
     puts "Please enter your faviorite player's name in this format 'first_last':"
    
     name = gets.chomp
     puts "You entered player \"#{name}\" "
     scraper = GoldenStats::Scraper.new(name)
     puts "here is the player's stats:"
     puts scraper.players
   
  #   puts "To quit, type 'exit'."
  #   input = gets.strip
  # end 
end
end