#module GoldenStats
class GoldenStats::CLI
  def start 
   # puts "hello world!"
  #   input = ""
  #   while input != "exit"
     puts "Welcome to the Warriors Stats portal!"
     puts "Please enter a jersey number:"
     jersey_number = gets.chomp
     puts "You entered jersey number \"#{jersey_number}\""
     scraper = GoldenStats::Scraper.new(jersey_number)
     puts "here are the players"
     puts scraper.players
   
  #   puts "To quit, type 'exit'."
  #   input = gets.strip
  # end 
end
end