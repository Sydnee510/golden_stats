#module GoldenStats
class GoldenStats::CLI
  def start 
   # puts "hello world!"
  #   input = ""
  #   while input != "exit"
     puts "Welcome to the Warrior's Stats portal!"
     puts
    # puts "Here is the roster for the preason #{players}"
     #puts 
     puts "Please enter your faviorite player's name in this format 'first_last':"
     name = gets.chomp
     puts "You entered player \"#{name}\""
     scraper = GoldenStats::Scraper.new(name)
     puts "here is the player's stats:"
     puts scraper.players
   
  #   puts "To quit, type 'exit'."
  #   input = gets.strip
  # end 
end
end